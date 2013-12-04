<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Main_Processor">
<packages>
<package name="QFP50P1600X1600X170-100N">
<smd name="1" x="-7.62" y="5.9944" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="2" x="-7.62" y="5.5118" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="3" x="-7.62" y="5.0038" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="4" x="-7.62" y="4.4958" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="5" x="-7.62" y="3.9878" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="6" x="-7.62" y="3.5052" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="7" x="-7.62" y="2.9972" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="8" x="-7.62" y="2.4892" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="9" x="-7.62" y="2.0066" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="10" x="-7.62" y="1.4986" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="11" x="-7.62" y="0.9906" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="12" x="-7.62" y="0.508" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="13" x="-7.62" y="0" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="14" x="-7.62" y="-0.508" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="15" x="-7.62" y="-0.9906" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="16" x="-7.62" y="-1.4986" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="17" x="-7.62" y="-2.0066" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="18" x="-7.62" y="-2.4892" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="19" x="-7.62" y="-2.9972" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="20" x="-7.62" y="-3.5052" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="21" x="-7.62" y="-3.9878" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="22" x="-7.62" y="-4.4958" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="23" x="-7.62" y="-5.0038" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="24" x="-7.62" y="-5.5118" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="25" x="-7.62" y="-5.9944" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="26" x="-5.9944" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="27" x="-5.5118" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="28" x="-5.0038" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="29" x="-4.4958" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="30" x="-3.9878" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="31" x="-3.5052" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="32" x="-2.9972" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="33" x="-2.4892" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="34" x="-2.0066" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="35" x="-1.4986" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="36" x="-0.9906" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="37" x="-0.508" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="38" x="0" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="39" x="0.508" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="40" x="0.9906" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="41" x="1.4986" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="42" x="2.0066" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="43" x="2.4892" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="44" x="2.9972" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="45" x="3.5052" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="46" x="3.9878" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="47" x="4.4958" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="48" x="5.0038" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="49" x="5.5118" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="50" x="5.9944" y="-7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="51" x="7.62" y="-5.9944" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="52" x="7.62" y="-5.5118" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="53" x="7.62" y="-5.0038" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="54" x="7.62" y="-4.4958" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="55" x="7.62" y="-3.9878" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="56" x="7.62" y="-3.5052" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="57" x="7.62" y="-2.9972" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="58" x="7.62" y="-2.4892" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="59" x="7.62" y="-2.0066" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="60" x="7.62" y="-1.4986" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="61" x="7.62" y="-0.9906" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="62" x="7.62" y="-0.508" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="63" x="7.62" y="0" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="64" x="7.62" y="0.508" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="65" x="7.62" y="0.9906" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="66" x="7.62" y="1.4986" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="67" x="7.62" y="2.0066" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="68" x="7.62" y="2.4892" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="69" x="7.62" y="2.9972" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="70" x="7.62" y="3.5052" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="71" x="7.62" y="3.9878" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="72" x="7.62" y="4.4958" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="73" x="7.62" y="5.0038" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="74" x="7.62" y="5.5118" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="75" x="7.62" y="5.9944" dx="0.3048" dy="1.4732" layer="1" rot="R270"/>
<smd name="76" x="5.9944" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="77" x="5.5118" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="78" x="5.0038" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="79" x="4.4958" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="80" x="3.9878" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="81" x="3.5052" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="82" x="2.9972" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="83" x="2.4892" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="84" x="2.0066" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="85" x="1.4986" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="86" x="0.9906" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="87" x="0.508" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="88" x="0" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="89" x="-0.508" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="90" x="-0.9906" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="91" x="-1.4986" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="92" x="-2.0066" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="93" x="-2.4892" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="94" x="-2.9972" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="95" x="-3.5052" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="96" x="-3.9878" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="97" x="-4.4958" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="98" x="-5.0038" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="99" x="-5.5118" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<smd name="100" x="-5.9944" y="7.62" dx="0.3048" dy="1.4732" layer="1" rot="R180"/>
<wire x1="-8.8646" y1="1.7018" x2="-8.8646" y2="1.3208" width="0.1524" layer="49"/>
<wire x1="-8.8646" y1="1.3208" x2="-8.6106" y2="1.3208" width="0.1524" layer="49"/>
<wire x1="-8.6106" y1="1.3208" x2="-8.6106" y2="1.7018" width="0.1524" layer="49"/>
<wire x1="-8.8646" y1="-3.302" x2="-8.8646" y2="-3.683" width="0.1524" layer="49"/>
<wire x1="-8.8646" y1="-3.683" x2="-8.6106" y2="-3.683" width="0.1524" layer="49"/>
<wire x1="-8.6106" y1="-3.683" x2="-8.6106" y2="-3.302" width="0.1524" layer="49"/>
<wire x1="-4.191" y1="-8.6106" x2="-4.191" y2="-8.8646" width="0.1524" layer="49"/>
<wire x1="-4.191" y1="-8.8646" x2="-3.81" y2="-8.8646" width="0.1524" layer="49"/>
<wire x1="-3.81" y1="-8.8646" x2="-3.81" y2="-8.6106" width="0.1524" layer="49"/>
<wire x1="0.8128" y1="-8.6106" x2="0.8128" y2="-8.8646" width="0.1524" layer="49"/>
<wire x1="0.8128" y1="-8.8646" x2="1.1938" y2="-8.8646" width="0.1524" layer="49"/>
<wire x1="1.1938" y1="-8.8646" x2="1.1938" y2="-8.6106" width="0.1524" layer="49"/>
<wire x1="5.8166" y1="-8.6106" x2="5.8166" y2="-8.8646" width="0.1524" layer="49"/>
<wire x1="5.8166" y1="-8.8646" x2="6.1976" y2="-8.8646" width="0.1524" layer="49"/>
<wire x1="6.1976" y1="-8.8646" x2="6.1976" y2="-8.6106" width="0.1524" layer="49"/>
<wire x1="8.8646" y1="-1.3208" x2="8.8646" y2="-1.7018" width="0.1524" layer="49"/>
<wire x1="8.8646" y1="-1.7018" x2="8.6106" y2="-1.7018" width="0.1524" layer="49"/>
<wire x1="8.6106" y1="-1.7018" x2="8.6106" y2="-1.3208" width="0.1524" layer="49"/>
<wire x1="8.8646" y1="3.683" x2="8.8646" y2="3.302" width="0.1524" layer="49"/>
<wire x1="8.8646" y1="3.302" x2="8.6106" y2="3.302" width="0.1524" layer="49"/>
<wire x1="8.6106" y1="3.302" x2="8.6106" y2="3.683" width="0.1524" layer="49"/>
<wire x1="3.81" y1="8.6106" x2="3.81" y2="8.8646" width="0.1524" layer="49"/>
<wire x1="3.81" y1="8.8646" x2="4.191" y2="8.8646" width="0.1524" layer="49"/>
<wire x1="4.191" y1="8.8646" x2="4.191" y2="8.6106" width="0.1524" layer="49"/>
<wire x1="-1.1938" y1="8.6106" x2="-1.1938" y2="8.8646" width="0.1524" layer="49"/>
<wire x1="-1.1938" y1="8.8646" x2="-0.8128" y2="8.8646" width="0.1524" layer="49"/>
<wire x1="-0.8128" y1="8.8646" x2="-0.8128" y2="8.6106" width="0.1524" layer="49"/>
<wire x1="-6.1976" y1="8.6106" x2="-6.1976" y2="8.8646" width="0.1524" layer="49"/>
<wire x1="-6.1976" y1="8.8646" x2="-5.8166" y2="8.8646" width="0.1524" layer="49"/>
<wire x1="-5.8166" y1="8.8646" x2="-5.8166" y2="8.6106" width="0.1524" layer="49"/>
<wire x1="8.6106" y1="-8.6106" x2="-8.6106" y2="-8.6106" width="0.1524" layer="39"/>
<wire x1="-8.6106" y1="-8.6106" x2="-8.6106" y2="8.6106" width="0.1524" layer="39"/>
<wire x1="-8.6106" y1="8.6106" x2="8.6106" y2="8.6106" width="0.1524" layer="39"/>
<wire x1="8.6106" y1="8.6106" x2="8.6106" y2="-8.6106" width="0.1524" layer="39"/>
<wire x1="-6.477" y1="7.0104" x2="-7.0104" y2="7.0104" width="0.1524" layer="21"/>
<wire x1="7.0104" y1="6.477" x2="7.0104" y2="7.0104" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-7.0104" x2="7.0104" y2="-7.0104" width="0.1524" layer="21"/>
<wire x1="-6.5532" y1="6.1722" x2="-6.1722" y2="6.5532" width="0.1524" layer="21"/>
<wire x1="-7.0104" y1="-7.0104" x2="-6.477" y2="-7.0104" width="0.1524" layer="21"/>
<wire x1="7.0104" y1="-7.0104" x2="7.0104" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="7.0104" y1="7.0104" x2="6.477" y2="7.0104" width="0.1524" layer="21"/>
<wire x1="-7.0104" y1="7.0104" x2="-7.0104" y2="6.477" width="0.1524" layer="21"/>
<wire x1="-7.0104" y1="-6.477" x2="-7.0104" y2="-7.0104" width="0.1524" layer="21"/>
<text x="-9.5758" y="5.9944" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="5.842" y1="7.0104" x2="6.1468" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="7.0104" x2="6.1468" y2="8.001" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="8.001" x2="5.842" y2="8.001" width="0.1524" layer="51"/>
<wire x1="5.842" y1="8.001" x2="5.842" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="7.0104" x2="5.6388" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="7.0104" x2="5.6388" y2="8.001" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="8.001" x2="5.3594" y2="8.001" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="8.001" x2="5.3594" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="7.0104" x2="5.1562" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="5.1562" y1="7.0104" x2="5.1562" y2="8.001" width="0.1524" layer="51"/>
<wire x1="5.1562" y1="8.001" x2="4.8514" y2="8.001" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="8.001" x2="4.8514" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="4.3434" y1="7.0104" x2="4.6482" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="7.0104" x2="4.6482" y2="8.001" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="8.001" x2="4.3434" y2="8.001" width="0.1524" layer="51"/>
<wire x1="4.3434" y1="8.001" x2="4.3434" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="7.0104" x2="4.1402" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="7.0104" x2="4.1402" y2="8.001" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="8.001" x2="3.8608" y2="8.001" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="8.001" x2="3.8608" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="7.0104" x2="3.6576" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="3.6576" y1="7.0104" x2="3.6576" y2="8.001" width="0.1524" layer="51"/>
<wire x1="3.6576" y1="8.001" x2="3.3528" y2="8.001" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="8.001" x2="3.3528" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="2.8448" y1="7.0104" x2="3.1496" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="7.0104" x2="3.1496" y2="8.001" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="8.001" x2="2.8448" y2="8.001" width="0.1524" layer="51"/>
<wire x1="2.8448" y1="8.001" x2="2.8448" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="7.0104" x2="2.6416" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="7.0104" x2="2.6416" y2="8.001" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="8.001" x2="2.3622" y2="8.001" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="8.001" x2="2.3622" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="7.0104" x2="2.159" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="2.159" y1="7.0104" x2="2.159" y2="8.001" width="0.1524" layer="51"/>
<wire x1="2.159" y1="8.001" x2="1.8542" y2="8.001" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="8.001" x2="1.8542" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="1.3462" y1="7.0104" x2="1.651" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="1.651" y1="7.0104" x2="1.651" y2="8.001" width="0.1524" layer="51"/>
<wire x1="1.651" y1="8.001" x2="1.3462" y2="8.001" width="0.1524" layer="51"/>
<wire x1="1.3462" y1="8.001" x2="1.3462" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="0.8382" y1="7.0104" x2="1.143" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="1.143" y1="7.0104" x2="1.143" y2="8.001" width="0.1524" layer="51"/>
<wire x1="1.143" y1="8.001" x2="0.8382" y2="8.001" width="0.1524" layer="51"/>
<wire x1="0.8382" y1="8.001" x2="0.8382" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="7.0104" x2="0.6604" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="7.0104" x2="0.6604" y2="8.001" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="8.001" x2="0.3556" y2="8.001" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="8.001" x2="0.3556" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="7.0104" x2="0.1524" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="7.0104" x2="0.1524" y2="8.001" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="8.001" x2="-0.1524" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="8.001" x2="-0.1524" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="7.0104" x2="-0.3556" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="7.0104" x2="-0.3556" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="8.001" x2="-0.6604" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="8.001" x2="-0.6604" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="7.0104" x2="-0.8382" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-0.8382" y1="7.0104" x2="-0.8382" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-0.8382" y1="8.001" x2="-1.143" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="8.001" x2="-1.143" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="7.0104" x2="-1.3462" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-1.3462" y1="7.0104" x2="-1.3462" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-1.3462" y1="8.001" x2="-1.651" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="8.001" x2="-1.651" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="7.0104" x2="-1.8542" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="7.0104" x2="-1.8542" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="8.001" x2="-2.159" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="8.001" x2="-2.159" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="7.0104" x2="-2.3622" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="7.0104" x2="-2.3622" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="8.001" x2="-2.6416" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="8.001" x2="-2.6416" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="7.0104" x2="-2.8448" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-2.8448" y1="7.0104" x2="-2.8448" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-2.8448" y1="8.001" x2="-3.1496" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="8.001" x2="-3.1496" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-3.6576" y1="7.0104" x2="-3.3528" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="7.0104" x2="-3.3528" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="8.001" x2="-3.6576" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-3.6576" y1="8.001" x2="-3.6576" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="7.0104" x2="-3.8608" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="7.0104" x2="-3.8608" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="8.001" x2="-4.1402" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="8.001" x2="-4.1402" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="7.0104" x2="-4.3434" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-4.3434" y1="7.0104" x2="-4.3434" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-4.3434" y1="8.001" x2="-4.6482" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="8.001" x2="-4.6482" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-5.1562" y1="7.0104" x2="-4.8514" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="7.0104" x2="-4.8514" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="8.001" x2="-5.1562" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-5.1562" y1="8.001" x2="-5.1562" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="7.0104" x2="-5.3594" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="7.0104" x2="-5.3594" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="8.001" x2="-5.6388" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="8.001" x2="-5.6388" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="7.0104" x2="-5.842" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="7.0104" x2="-5.842" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="8.001" x2="-6.1468" y2="8.001" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="8.001" x2="-6.1468" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="5.842" x2="-7.0104" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="6.1468" x2="-8.001" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="6.1468" x2="-8.001" y2="5.842" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="5.842" x2="-7.0104" y2="5.842" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="5.3594" x2="-7.0104" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="5.6388" x2="-8.001" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="5.6388" x2="-8.001" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="5.3594" x2="-7.0104" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="4.8514" x2="-7.0104" y2="5.1562" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="5.1562" x2="-8.001" y2="5.1562" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="5.1562" x2="-8.001" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="4.8514" x2="-7.0104" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="4.3434" x2="-7.0104" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="4.6482" x2="-8.001" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="4.6482" x2="-8.001" y2="4.3434" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="4.3434" x2="-7.0104" y2="4.3434" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="3.8608" x2="-7.0104" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="4.1402" x2="-8.001" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="4.1402" x2="-8.001" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="3.8608" x2="-7.0104" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="3.3528" x2="-7.0104" y2="3.6576" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="3.6576" x2="-8.001" y2="3.6576" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="3.6576" x2="-8.001" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="3.3528" x2="-7.0104" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="2.8448" x2="-7.0104" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="3.1496" x2="-8.001" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="3.1496" x2="-8.001" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="2.8448" x2="-7.0104" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="2.3622" x2="-7.0104" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="2.6416" x2="-8.001" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="2.6416" x2="-8.001" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="2.3622" x2="-7.0104" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="1.8542" x2="-7.0104" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="2.159" x2="-8.001" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="2.159" x2="-8.001" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="1.8542" x2="-7.0104" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="1.3462" x2="-7.0104" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="1.651" x2="-8.001" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="1.651" x2="-8.001" y2="1.3462" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="1.3462" x2="-7.0104" y2="1.3462" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="0.8382" x2="-7.0104" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="1.143" x2="-8.001" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="1.143" x2="-8.001" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="0.8382" x2="-7.0104" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="0.3556" x2="-7.0104" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="0.6604" x2="-8.001" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="0.6604" x2="-8.001" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="0.3556" x2="-7.0104" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-0.1524" x2="-7.0104" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="0.1524" x2="-8.001" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="0.1524" x2="-8.001" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-0.1524" x2="-7.0104" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-0.6604" x2="-7.0104" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-0.3556" x2="-8.001" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-0.3556" x2="-8.001" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-0.6604" x2="-7.0104" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-1.143" x2="-7.0104" y2="-0.8382" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-0.8382" x2="-8.001" y2="-0.8382" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-0.8382" x2="-8.001" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-1.143" x2="-7.0104" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-1.651" x2="-7.0104" y2="-1.3462" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-1.3462" x2="-8.001" y2="-1.3462" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-1.3462" x2="-8.001" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-1.651" x2="-7.0104" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-2.159" x2="-7.0104" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-1.8542" x2="-8.001" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-1.8542" x2="-8.001" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-2.159" x2="-7.0104" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-2.6416" x2="-7.0104" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-2.3622" x2="-8.001" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-2.3622" x2="-8.001" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-2.6416" x2="-7.0104" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-3.1496" x2="-7.0104" y2="-2.8448" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-2.8448" x2="-8.001" y2="-2.8448" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-2.8448" x2="-8.001" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-3.1496" x2="-7.0104" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-3.6576" x2="-7.0104" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-3.3528" x2="-8.001" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-3.3528" x2="-8.001" y2="-3.6576" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-3.6576" x2="-7.0104" y2="-3.6576" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-4.1402" x2="-7.0104" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-3.8608" x2="-8.001" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-3.8608" x2="-8.001" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-4.1402" x2="-7.0104" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-4.6482" x2="-7.0104" y2="-4.3434" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-4.3434" x2="-8.001" y2="-4.3434" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-4.3434" x2="-8.001" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-4.6482" x2="-7.0104" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-5.1562" x2="-7.0104" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-4.8514" x2="-8.001" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-4.8514" x2="-8.001" y2="-5.1562" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-5.1562" x2="-7.0104" y2="-5.1562" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-5.6388" x2="-7.0104" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-5.3594" x2="-8.001" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-5.3594" x2="-8.001" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-5.6388" x2="-7.0104" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-6.1468" x2="-7.0104" y2="-5.842" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-5.842" x2="-8.001" y2="-5.842" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-5.842" x2="-8.001" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="-6.1468" x2="-7.0104" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="-7.0104" x2="-6.1468" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="-7.0104" x2="-6.1468" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="-8.001" x2="-5.842" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="-8.001" x2="-5.842" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="-7.0104" x2="-5.6388" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="-7.0104" x2="-5.6388" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="-8.001" x2="-5.3594" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="-8.001" x2="-5.3594" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="-7.0104" x2="-5.1562" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-5.1562" y1="-7.0104" x2="-5.1562" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-5.1562" y1="-8.001" x2="-4.8514" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="-8.001" x2="-4.8514" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-4.3434" y1="-7.0104" x2="-4.6482" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="-7.0104" x2="-4.6482" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="-8.001" x2="-4.3434" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-4.3434" y1="-8.001" x2="-4.3434" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="-7.0104" x2="-4.1402" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-7.0104" x2="-4.1402" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-8.001" x2="-3.8608" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="-8.001" x2="-3.8608" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="-7.0104" x2="-3.6576" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-3.6576" y1="-7.0104" x2="-3.6576" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-3.6576" y1="-8.001" x2="-3.3528" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="-8.001" x2="-3.3528" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-2.8448" y1="-7.0104" x2="-3.1496" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="-7.0104" x2="-3.1496" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="-8.001" x2="-2.8448" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-2.8448" y1="-8.001" x2="-2.8448" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="-7.0104" x2="-2.6416" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="-7.0104" x2="-2.6416" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="-8.001" x2="-2.3622" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="-8.001" x2="-2.3622" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-7.0104" x2="-2.159" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-7.0104" x2="-2.159" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-8.001" x2="-1.8542" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-8.001" x2="-1.8542" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-1.3462" y1="-7.0104" x2="-1.651" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-7.0104" x2="-1.651" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-8.001" x2="-1.3462" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-1.3462" y1="-8.001" x2="-1.3462" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-0.8382" y1="-7.0104" x2="-1.143" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-7.0104" x2="-1.143" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-8.001" x2="-0.8382" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-0.8382" y1="-8.001" x2="-0.8382" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="-7.0104" x2="-0.6604" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-7.0104" x2="-0.6604" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-8.001" x2="-0.3556" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="-8.001" x2="-0.3556" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="-7.0104" x2="-0.1524" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="-7.0104" x2="-0.1524" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="-8.001" x2="0.1524" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="-8.001" x2="0.1524" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="-7.0104" x2="0.3556" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="-7.0104" x2="0.3556" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="-8.001" x2="0.6604" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="-8.001" x2="0.6604" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-7.0104" x2="0.8382" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="0.8382" y1="-7.0104" x2="0.8382" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="0.8382" y1="-8.001" x2="1.143" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-8.001" x2="1.143" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-7.0104" x2="1.3462" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="1.3462" y1="-7.0104" x2="1.3462" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="1.3462" y1="-8.001" x2="1.651" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-8.001" x2="1.651" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="2.159" y1="-7.0104" x2="1.8542" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-7.0104" x2="1.8542" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-8.001" x2="2.159" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="2.159" y1="-8.001" x2="2.159" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="-7.0104" x2="2.3622" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="-7.0104" x2="2.3622" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="-8.001" x2="2.6416" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="-8.001" x2="2.6416" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="-7.0104" x2="2.8448" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="2.8448" y1="-7.0104" x2="2.8448" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="2.8448" y1="-8.001" x2="3.1496" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="-8.001" x2="3.1496" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="3.6576" y1="-7.0104" x2="3.3528" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="-7.0104" x2="3.3528" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="-8.001" x2="3.6576" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="3.6576" y1="-8.001" x2="3.6576" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-7.0104" x2="3.8608" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="-7.0104" x2="3.8608" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="-8.001" x2="4.1402" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-8.001" x2="4.1402" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="-7.0104" x2="4.3434" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="4.3434" y1="-7.0104" x2="4.3434" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="4.3434" y1="-8.001" x2="4.6482" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="-8.001" x2="4.6482" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="5.1562" y1="-7.0104" x2="4.8514" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="-7.0104" x2="4.8514" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="-8.001" x2="5.1562" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="5.1562" y1="-8.001" x2="5.1562" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="-7.0104" x2="5.3594" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="-7.0104" x2="5.3594" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="-8.001" x2="5.6388" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="-8.001" x2="5.6388" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="-7.0104" x2="5.842" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="5.842" y1="-7.0104" x2="5.842" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="5.842" y1="-8.001" x2="6.1468" y2="-8.001" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="-8.001" x2="6.1468" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-5.842" x2="7.0104" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-6.1468" x2="8.001" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-6.1468" x2="8.001" y2="-5.842" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-5.842" x2="7.0104" y2="-5.842" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-5.3594" x2="7.0104" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-5.6388" x2="8.001" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-5.6388" x2="8.001" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-5.3594" x2="7.0104" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-4.8514" x2="7.0104" y2="-5.1562" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-5.1562" x2="8.001" y2="-5.1562" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-5.1562" x2="8.001" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-4.8514" x2="7.0104" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-4.3434" x2="7.0104" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-4.6482" x2="8.001" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-4.6482" x2="8.001" y2="-4.3434" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-4.3434" x2="7.0104" y2="-4.3434" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-3.8608" x2="7.0104" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-4.1402" x2="8.001" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-4.1402" x2="8.001" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-3.8608" x2="7.0104" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-3.3528" x2="7.0104" y2="-3.6576" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-3.6576" x2="8.001" y2="-3.6576" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-3.6576" x2="8.001" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-3.3528" x2="7.0104" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-2.8448" x2="7.0104" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-3.1496" x2="8.001" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-3.1496" x2="8.001" y2="-2.8448" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-2.8448" x2="7.0104" y2="-2.8448" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-2.3622" x2="7.0104" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-2.6416" x2="8.001" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-2.6416" x2="8.001" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-2.3622" x2="7.0104" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-1.8542" x2="7.0104" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-2.159" x2="8.001" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-2.159" x2="8.001" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-1.8542" x2="7.0104" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-1.3462" x2="7.0104" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-1.651" x2="8.001" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-1.651" x2="8.001" y2="-1.3462" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-1.3462" x2="7.0104" y2="-1.3462" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-0.8382" x2="7.0104" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-1.143" x2="8.001" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-1.143" x2="8.001" y2="-0.8382" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-0.8382" x2="7.0104" y2="-0.8382" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-0.3556" x2="7.0104" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-0.6604" x2="8.001" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-0.6604" x2="8.001" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-0.3556" x2="7.0104" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="0.1524" x2="7.0104" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-0.1524" x2="8.001" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="8.001" y1="-0.1524" x2="8.001" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="8.001" y1="0.1524" x2="7.0104" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="0.6604" x2="7.0104" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="0.3556" x2="8.001" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="8.001" y1="0.3556" x2="8.001" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="8.001" y1="0.6604" x2="7.0104" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="1.143" x2="7.0104" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="0.8382" x2="8.001" y2="0.8382" width="0.1524" layer="51"/>
<wire x1="8.001" y1="0.8382" x2="8.001" y2="1.143" width="0.1524" layer="51"/>
<wire x1="8.001" y1="1.143" x2="7.0104" y2="1.143" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="1.651" x2="7.0104" y2="1.3462" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="1.3462" x2="8.001" y2="1.3462" width="0.1524" layer="51"/>
<wire x1="8.001" y1="1.3462" x2="8.001" y2="1.651" width="0.1524" layer="51"/>
<wire x1="8.001" y1="1.651" x2="7.0104" y2="1.651" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="2.159" x2="7.0104" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="1.8542" x2="8.001" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="8.001" y1="1.8542" x2="8.001" y2="2.159" width="0.1524" layer="51"/>
<wire x1="8.001" y1="2.159" x2="7.0104" y2="2.159" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="2.6416" x2="7.0104" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="2.3622" x2="8.001" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="8.001" y1="2.3622" x2="8.001" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="8.001" y1="2.6416" x2="7.0104" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="3.1496" x2="7.0104" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="2.8448" x2="8.001" y2="2.8448" width="0.1524" layer="51"/>
<wire x1="8.001" y1="2.8448" x2="8.001" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="8.001" y1="3.1496" x2="7.0104" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="3.6576" x2="7.0104" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="3.3528" x2="8.001" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="8.001" y1="3.3528" x2="8.001" y2="3.6576" width="0.1524" layer="51"/>
<wire x1="8.001" y1="3.6576" x2="7.0104" y2="3.6576" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="4.1402" x2="7.0104" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="3.8608" x2="8.001" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="8.001" y1="3.8608" x2="8.001" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="8.001" y1="4.1402" x2="7.0104" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="4.6482" x2="7.0104" y2="4.3434" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="4.3434" x2="8.001" y2="4.3434" width="0.1524" layer="51"/>
<wire x1="8.001" y1="4.3434" x2="8.001" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="8.001" y1="4.6482" x2="7.0104" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="5.1562" x2="7.0104" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="4.8514" x2="8.001" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="8.001" y1="4.8514" x2="8.001" y2="5.1562" width="0.1524" layer="51"/>
<wire x1="8.001" y1="5.1562" x2="7.0104" y2="5.1562" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="5.6388" x2="7.0104" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="5.3594" x2="8.001" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="8.001" y1="5.3594" x2="8.001" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="8.001" y1="5.6388" x2="7.0104" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="6.1468" x2="7.0104" y2="5.842" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="5.842" x2="8.001" y2="5.842" width="0.1524" layer="51"/>
<wire x1="8.001" y1="5.842" x2="8.001" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="8.001" y1="6.1468" x2="7.0104" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="5.7404" x2="-5.7404" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="-7.0104" x2="7.0104" y2="-7.0104" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="-7.0104" x2="7.0104" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="7.0104" y1="7.0104" x2="-7.0104" y2="7.0104" width="0.1524" layer="51"/>
<wire x1="-7.0104" y1="7.0104" x2="-7.0104" y2="-7.0104" width="0.1524" layer="51"/>
<text x="-9.5758" y="5.9944" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-5.0038" y="9.8552" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.7404" y="-11.3538" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MK10DN512ZVLL10_A">
<pin name="VDD_2" x="-50.8" y="48.26" length="middle" direction="pwr"/>
<pin name="VDDA" x="-50.8" y="45.72" length="middle" direction="pwr"/>
<pin name="VDD" x="-50.8" y="43.18" length="middle" direction="pwr"/>
<pin name="VBAT" x="-50.8" y="38.1" length="middle" direction="pwr"/>
<pin name="ADC0_DP1" x="-50.8" y="33.02" length="middle" direction="pas"/>
<pin name="ADC0_DM1" x="-50.8" y="30.48" length="middle" direction="pas"/>
<pin name="ADC1_DP1" x="-50.8" y="27.94" length="middle" direction="pas"/>
<pin name="ADC1_DM1" x="-50.8" y="25.4" length="middle" direction="pas"/>
<pin name="PGA0_DP/ADC0_DP0/ADC1_DP3" x="-50.8" y="22.86" length="middle" direction="pas"/>
<pin name="PGA0_DM/ADC0_DM0/ADC1_DM3" x="-50.8" y="20.32" length="middle" direction="pas"/>
<pin name="PGA1_DP/ADC1_DP0/ADC0_DP3" x="-50.8" y="17.78" length="middle" direction="pas"/>
<pin name="PTA0" x="-50.8" y="12.7" length="middle"/>
<pin name="PTA1" x="-50.8" y="10.16" length="middle"/>
<pin name="PTA2" x="-50.8" y="7.62" length="middle"/>
<pin name="PTA3" x="-50.8" y="5.08" length="middle"/>
<pin name="PTA4" x="-50.8" y="2.54" length="middle"/>
<pin name="PTA5" x="-50.8" y="0" length="middle"/>
<pin name="PTA12" x="-50.8" y="-2.54" length="middle"/>
<pin name="PTA13" x="-50.8" y="-5.08" length="middle"/>
<pin name="PTA14" x="-50.8" y="-7.62" length="middle"/>
<pin name="PTA15" x="-50.8" y="-10.16" length="middle"/>
<pin name="PTA16" x="-50.8" y="-12.7" length="middle"/>
<pin name="PTA17" x="-50.8" y="-15.24" length="middle"/>
<pin name="PTA18" x="-50.8" y="-17.78" length="middle"/>
<pin name="PTA19" x="-50.8" y="-20.32" length="middle"/>
<pin name="PTB0" x="-50.8" y="-25.4" length="middle"/>
<pin name="PTB1" x="-50.8" y="-27.94" length="middle"/>
<pin name="PTB2" x="-50.8" y="-30.48" length="middle"/>
<pin name="PTB3" x="-50.8" y="-33.02" length="middle"/>
<pin name="PTB9" x="-50.8" y="-35.56" length="middle"/>
<pin name="PTB10" x="-50.8" y="-38.1" length="middle"/>
<pin name="PTB11" x="-50.8" y="-40.64" length="middle"/>
<pin name="VSSA" x="-50.8" y="-45.72" length="middle" direction="pas"/>
<pin name="VSS_2" x="-50.8" y="-48.26" length="middle" direction="pas"/>
<pin name="VSS_3" x="-50.8" y="-50.8" length="middle" direction="pas"/>
<pin name="VSS" x="-50.8" y="-53.34" length="middle" direction="pas"/>
<pin name="PTE0" x="50.8" y="48.26" length="middle" rot="R180"/>
<pin name="PTE1" x="50.8" y="45.72" length="middle" rot="R180"/>
<pin name="PTE2" x="50.8" y="43.18" length="middle" rot="R180"/>
<pin name="PTE3" x="50.8" y="40.64" length="middle" rot="R180"/>
<pin name="PTE4" x="50.8" y="38.1" length="middle" rot="R180"/>
<pin name="PTE5" x="50.8" y="35.56" length="middle" rot="R180"/>
<pin name="PTE6" x="50.8" y="33.02" length="middle" rot="R180"/>
<pin name="PTE16" x="50.8" y="30.48" length="middle" rot="R180"/>
<pin name="PTE17" x="50.8" y="27.94" length="middle" rot="R180"/>
<pin name="PTE18" x="50.8" y="25.4" length="middle" rot="R180"/>
<pin name="PTE19" x="50.8" y="22.86" length="middle" rot="R180"/>
<pin name="PTE24" x="50.8" y="20.32" length="middle" rot="R180"/>
<pin name="PTE25" x="50.8" y="17.78" length="middle" rot="R180"/>
<pin name="PTE26" x="50.8" y="15.24" length="middle" rot="R180"/>
<wire x1="-45.72" y1="53.34" x2="-45.72" y2="-58.42" width="0.4064" layer="94"/>
<wire x1="-45.72" y1="-58.42" x2="45.72" y2="-58.42" width="0.4064" layer="94"/>
<wire x1="45.72" y1="-58.42" x2="45.72" y2="53.34" width="0.4064" layer="94"/>
<wire x1="45.72" y1="53.34" x2="-45.72" y2="53.34" width="0.4064" layer="94"/>
<text x="-4.6228" y="55.8038" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.5626" y="-64.1096" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
<symbol name="MK10DN512ZVLL10_B">
<pin name="VDD_2" x="-83.82" y="35.56" length="middle" direction="pwr"/>
<pin name="VDD_3" x="-83.82" y="33.02" length="middle" direction="pwr"/>
<pin name="VDD_4" x="-83.82" y="30.48" length="middle" direction="pwr"/>
<pin name="VDD" x="-83.82" y="27.94" length="middle" direction="pwr"/>
<pin name="VREFH" x="-83.82" y="22.86" length="middle" direction="pas"/>
<pin name="VREFL" x="-83.82" y="20.32" length="middle" direction="pas"/>
<pin name="XTAL32" x="-83.82" y="17.78" length="middle" direction="pas"/>
<pin name="EXTAL32" x="-83.82" y="15.24" length="middle" direction="pas"/>
<pin name="RESET_B" x="-83.82" y="10.16" length="middle" direction="pas"/>
<pin name="PGA1_DM/ADC1_DM0/ADC0_DM3" x="-83.82" y="5.08" length="middle" direction="pas"/>
<pin name="PTB16" x="-83.82" y="0" length="middle"/>
<pin name="PTB17" x="-83.82" y="-2.54" length="middle"/>
<pin name="PTB18" x="-83.82" y="-5.08" length="middle"/>
<pin name="PTB19" x="-83.82" y="-7.62" length="middle"/>
<pin name="PTB20" x="-83.82" y="-10.16" length="middle"/>
<pin name="PTB21" x="-83.82" y="-12.7" length="middle"/>
<pin name="PTB22" x="-83.82" y="-15.24" length="middle"/>
<pin name="PTB23" x="-83.82" y="-17.78" length="middle"/>
<pin name="VSS_2" x="-83.82" y="-22.86" length="middle" direction="pas"/>
<pin name="VSS_3" x="-83.82" y="-25.4" length="middle" direction="pas"/>
<pin name="VSS" x="-83.82" y="-27.94" length="middle" direction="pas"/>
<pin name="VREF_OUT/CMP1_IN5/CMP0_IN5/ADC1_SE18" x="83.82" y="35.56" length="middle" direction="pas" rot="R180"/>
<pin name="DAC0_OUT/CMP1_IN3/ADC0_SE23" x="83.82" y="33.02" length="middle" direction="pas" rot="R180"/>
<pin name="PTC0" x="83.82" y="27.94" length="middle" rot="R180"/>
<pin name="PTC1" x="83.82" y="25.4" length="middle" rot="R180"/>
<pin name="PTC2" x="83.82" y="22.86" length="middle" rot="R180"/>
<pin name="PTC3" x="83.82" y="20.32" length="middle" rot="R180"/>
<pin name="PTC4" x="83.82" y="17.78" length="middle" rot="R180"/>
<pin name="PTC5" x="83.82" y="15.24" length="middle" rot="R180"/>
<pin name="PTC6" x="83.82" y="12.7" length="middle" rot="R180"/>
<pin name="PTC7" x="83.82" y="10.16" length="middle" rot="R180"/>
<pin name="PTC8" x="83.82" y="7.62" length="middle" rot="R180"/>
<pin name="PTC9" x="83.82" y="5.08" length="middle" rot="R180"/>
<pin name="PTC10" x="83.82" y="2.54" length="middle" rot="R180"/>
<pin name="PTC11" x="83.82" y="0" length="middle" rot="R180"/>
<pin name="PTC12" x="83.82" y="-2.54" length="middle" rot="R180"/>
<pin name="PTC13" x="83.82" y="-5.08" length="middle" rot="R180"/>
<pin name="PTC14" x="83.82" y="-7.62" length="middle" rot="R180"/>
<pin name="PTC15" x="83.82" y="-10.16" length="middle" rot="R180"/>
<pin name="PTC16" x="83.82" y="-12.7" length="middle" rot="R180"/>
<pin name="PTC17" x="83.82" y="-15.24" length="middle" rot="R180"/>
<pin name="PTC18" x="83.82" y="-17.78" length="middle" rot="R180"/>
<pin name="PTD0" x="83.82" y="-22.86" length="middle" rot="R180"/>
<pin name="PTD1" x="83.82" y="-25.4" length="middle" rot="R180"/>
<pin name="PTD2" x="83.82" y="-27.94" length="middle" rot="R180"/>
<pin name="PTD3" x="83.82" y="-30.48" length="middle" rot="R180"/>
<pin name="PTD4" x="83.82" y="-33.02" length="middle" rot="R180"/>
<pin name="PTD5" x="83.82" y="-35.56" length="middle" rot="R180"/>
<pin name="PTD6" x="83.82" y="-38.1" length="middle" rot="R180"/>
<pin name="PTD7" x="83.82" y="-40.64" length="middle" rot="R180"/>
<wire x1="-78.74" y1="40.64" x2="-78.74" y2="-45.72" width="0.4064" layer="94"/>
<wire x1="-78.74" y1="-45.72" x2="78.74" y2="-45.72" width="0.4064" layer="94"/>
<wire x1="78.74" y1="-45.72" x2="78.74" y2="40.64" width="0.4064" layer="94"/>
<wire x1="78.74" y1="40.64" x2="-78.74" y2="40.64" width="0.4064" layer="94"/>
<text x="-4.7498" y="43.3578" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-6.1722" y="-51.4858" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MK10DN512ZVLL10" prefix="U">
<description>MCU, 32 BIT, KINETIS, K10, LQFP-100</description>
<gates>
<gate name="A" symbol="MK10DN512ZVLL10_A" x="0" y="0"/>
<gate name="B" symbol="MK10DN512ZVLL10_B" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFP50P1600X1600X170-100N">
<connects>
<connect gate="A" pin="ADC0_DM1" pad="15"/>
<connect gate="A" pin="ADC0_DP1" pad="14"/>
<connect gate="A" pin="ADC1_DM1" pad="17"/>
<connect gate="A" pin="ADC1_DP1" pad="16"/>
<connect gate="A" pin="PGA0_DM/ADC0_DM0/ADC1_DM3" pad="19"/>
<connect gate="A" pin="PGA0_DP/ADC0_DP0/ADC1_DP3" pad="18"/>
<connect gate="A" pin="PGA1_DP/ADC1_DP0/ADC0_DP3" pad="20"/>
<connect gate="A" pin="PTA0" pad="34"/>
<connect gate="A" pin="PTA1" pad="35"/>
<connect gate="A" pin="PTA12" pad="42"/>
<connect gate="A" pin="PTA13" pad="43"/>
<connect gate="A" pin="PTA14" pad="44"/>
<connect gate="A" pin="PTA15" pad="45"/>
<connect gate="A" pin="PTA16" pad="46"/>
<connect gate="A" pin="PTA17" pad="47"/>
<connect gate="A" pin="PTA18" pad="50"/>
<connect gate="A" pin="PTA19" pad="51"/>
<connect gate="A" pin="PTA2" pad="36"/>
<connect gate="A" pin="PTA3" pad="37"/>
<connect gate="A" pin="PTA4" pad="38"/>
<connect gate="A" pin="PTA5" pad="39"/>
<connect gate="A" pin="PTB0" pad="53"/>
<connect gate="A" pin="PTB1" pad="54"/>
<connect gate="A" pin="PTB10" pad="58"/>
<connect gate="A" pin="PTB11" pad="59"/>
<connect gate="A" pin="PTB2" pad="55"/>
<connect gate="A" pin="PTB3" pad="56"/>
<connect gate="A" pin="PTB9" pad="57"/>
<connect gate="A" pin="PTE0" pad="1"/>
<connect gate="A" pin="PTE1" pad="2"/>
<connect gate="A" pin="PTE16" pad="10"/>
<connect gate="A" pin="PTE17" pad="11"/>
<connect gate="A" pin="PTE18" pad="12"/>
<connect gate="A" pin="PTE19" pad="13"/>
<connect gate="A" pin="PTE2" pad="3"/>
<connect gate="A" pin="PTE24" pad="31"/>
<connect gate="A" pin="PTE25" pad="32"/>
<connect gate="A" pin="PTE26" pad="33"/>
<connect gate="A" pin="PTE3" pad="4"/>
<connect gate="A" pin="PTE4" pad="5"/>
<connect gate="A" pin="PTE5" pad="6"/>
<connect gate="A" pin="PTE6" pad="7"/>
<connect gate="A" pin="VBAT" pad="30"/>
<connect gate="A" pin="VDD" pad="8"/>
<connect gate="A" pin="VDDA" pad="22"/>
<connect gate="A" pin="VDD_2" pad="40"/>
<connect gate="A" pin="VSS" pad="49"/>
<connect gate="A" pin="VSSA" pad="25"/>
<connect gate="A" pin="VSS_2" pad="9"/>
<connect gate="A" pin="VSS_3" pad="41"/>
<connect gate="B" pin="DAC0_OUT/CMP1_IN3/ADC0_SE23" pad="27"/>
<connect gate="B" pin="EXTAL32" pad="29"/>
<connect gate="B" pin="PGA1_DM/ADC1_DM0/ADC0_DM3" pad="21"/>
<connect gate="B" pin="PTB16" pad="62"/>
<connect gate="B" pin="PTB17" pad="63"/>
<connect gate="B" pin="PTB18" pad="64"/>
<connect gate="B" pin="PTB19" pad="65"/>
<connect gate="B" pin="PTB20" pad="66"/>
<connect gate="B" pin="PTB21" pad="67"/>
<connect gate="B" pin="PTB22" pad="68"/>
<connect gate="B" pin="PTB23" pad="69"/>
<connect gate="B" pin="PTC0" pad="70"/>
<connect gate="B" pin="PTC1" pad="71"/>
<connect gate="B" pin="PTC10" pad="82"/>
<connect gate="B" pin="PTC11" pad="83"/>
<connect gate="B" pin="PTC12" pad="84"/>
<connect gate="B" pin="PTC13" pad="85"/>
<connect gate="B" pin="PTC14" pad="86"/>
<connect gate="B" pin="PTC15" pad="87"/>
<connect gate="B" pin="PTC16" pad="90"/>
<connect gate="B" pin="PTC17" pad="91"/>
<connect gate="B" pin="PTC18" pad="92"/>
<connect gate="B" pin="PTC2" pad="72"/>
<connect gate="B" pin="PTC3" pad="73"/>
<connect gate="B" pin="PTC4" pad="76"/>
<connect gate="B" pin="PTC5" pad="77"/>
<connect gate="B" pin="PTC6" pad="78"/>
<connect gate="B" pin="PTC7" pad="79"/>
<connect gate="B" pin="PTC8" pad="80"/>
<connect gate="B" pin="PTC9" pad="81"/>
<connect gate="B" pin="PTD0" pad="93"/>
<connect gate="B" pin="PTD1" pad="94"/>
<connect gate="B" pin="PTD2" pad="95"/>
<connect gate="B" pin="PTD3" pad="96"/>
<connect gate="B" pin="PTD4" pad="97"/>
<connect gate="B" pin="PTD5" pad="98"/>
<connect gate="B" pin="PTD6" pad="99"/>
<connect gate="B" pin="PTD7" pad="100"/>
<connect gate="B" pin="RESET_B" pad="52"/>
<connect gate="B" pin="VDD" pad="75"/>
<connect gate="B" pin="VDD_2" pad="48"/>
<connect gate="B" pin="VDD_3" pad="61"/>
<connect gate="B" pin="VDD_4" pad="89"/>
<connect gate="B" pin="VREFH" pad="23"/>
<connect gate="B" pin="VREFL" pad="24"/>
<connect gate="B" pin="VREF_OUT/CMP1_IN5/CMP0_IN5/ADC1_SE18" pad="26"/>
<connect gate="B" pin="VSS" pad="74"/>
<connect gate="B" pin="VSS_2" pad="60"/>
<connect gate="B" pin="VSS_3" pad="88"/>
<connect gate="B" pin="XTAL32" pad="28"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="MK10DN512ZVLL10" constant="no"/>
<attribute name="OC_FARNELL" value="2070276" constant="no"/>
<attribute name="OC_NEWARK" value="75T7577" constant="no"/>
<attribute name="PACKAGE" value="LQFP-100" constant="no"/>
<attribute name="SUPPLIER" value="FREESCALE SEMICONDUCTOR" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="Main_Processor" deviceset="MK10DN512ZVLL10" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="-7.62" y="203.2" size="12.7" layer="91" rot="R180" align="center">Main Processor</text>
</plain>
<instances>
<instance part="U1" gate="A" x="-81.28" y="127"/>
<instance part="U1" gate="B" x="66.04" y="139.7"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
