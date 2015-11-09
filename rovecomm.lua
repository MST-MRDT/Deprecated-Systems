local roveProtocol = Proto("ROVE","MRDT RoveComm");

local fieldVersion = ProtoField.uint8("rove.version","Version",base.DEC)
local fieldSequenceNum = ProtoField.uint16("rove.seq","Sequence Number",base.DEC_HEX)
local fieldDataId = ProtoField.uint16("rove.dataid","DataId",base.DEC_HEX)
local fieldDataSize = ProtoField.uint16("rove.datasize","Size",base.DEC)
roveProtocol.fields = { fieldVersion, fieldSequenceNum, fieldDataId, fieldDataSize }

local expertBadLength = ProtoExpert.new("BadLength", "The encoded length does not equal the actual length", expert.group.MALFORMED, expert.severity.ERROR)
roveProtocol.experts = { expertBadLength }

function roveProtocol.dissector(buffer,pinfo,tree)
		pinfo.cols.protocol = "ROVE"
		
		pinfo.cols['info'] = 'DataId: ' .. buffer:range(3,2):uint() .. ', Seq: ' .. buffer:range(1,2):uint()
		
		local subtree = tree:add(roveProtocol,buffer(),"MRDT RoveComm Protocol"
			.. ', DataId: ' .. buffer:range(3,2):uint()
			.. ', Seq: ' .. buffer:range(1,2):uint())
		subtree:add(fieldVersion,buffer(0,1))
		subtree:add(fieldSequenceNum,buffer(1,2))
		subtree:add(fieldDataId,buffer(3,2))
		subtree:add(fieldDataSize,buffer(5,2))
		
		local actualLength = buffer:reported_length_remaining() - 7
		local expectedLength = buffer:range(5,2):uint()
		if (actualLength - expectedLength ~= 0) then subtree:add_proto_expert_info(expertBadLength) end
		
		Dissector.get("data"):call(buffer(7):tvb(),pinfo,tree)
end

local udp_encap_table = DissectorTable.get("udp.port")
udp_encap_table:add(11000,roveProtocol)