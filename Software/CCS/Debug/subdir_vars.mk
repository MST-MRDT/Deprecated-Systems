################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CMD_SRCS += \
../EK_LM4F120XL.cmd 

CFG_SRCS += \
../main.cfg 

C_SRCS += \
../EK_LM4F120XL.c \
../main.c \
../tcp.c 

OBJS += \
./EK_LM4F120XL.obj \
./main.obj \
./tcp.obj 

C_DEPS += \
./EK_LM4F120XL.pp \
./main.pp \
./tcp.pp 

GEN_MISC_DIRS += \
./configPkg/ 

GEN_CMDS += \
./configPkg/linker.cmd 

GEN_OPTS += \
./configPkg/compiler.opt 

GEN_FILES += \
./configPkg/linker.cmd \
./configPkg/compiler.opt 

GEN_FILES__QUOTED += \
"configPkg\linker.cmd" \
"configPkg\compiler.opt" 

GEN_MISC_DIRS__QUOTED += \
"configPkg\" 

C_DEPS__QUOTED += \
"EK_LM4F120XL.pp" \
"main.pp" \
"tcp.pp" 

OBJS__QUOTED += \
"EK_LM4F120XL.obj" \
"main.obj" \
"tcp.obj" 

C_SRCS__QUOTED += \
"../EK_LM4F120XL.c" \
"../main.c" \
"../tcp.c" 

GEN_CMDS__FLAG += \
-l"./configPkg/linker.cmd" 

GEN_OPTS__FLAG += \
--cmd_file="./configPkg/compiler.opt" 


