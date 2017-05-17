#!../../bin/linux-x86_64/agilent53220ATest

###############################################################################
# Set up environment
###############################################################################
< envPaths

epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}/db")
cd "${TOP}"

###############################################################################
# Register all support components
dbLoadDatabase("dbd/agilent53220ATest.dbd")
agilent53220ATest_registerRecordDeviceDriver(pdbbase)

#############################################################
# Set up ASYN ports
#############################################################
# ===========================================================
# Agilent 53220A (Frequency counter)
# ===========================================================

drvAsynIPPortConfigure ("agilFC","freq-b34-rf01:5024",0,0,0)
#drvAsynIPPortConfigure ("agilFC","freq-b34-rf01:5024")

###########################################################################################
# Load record instances
dbLoadRecords("db/Agilent53220A.db","DEVICE=CNTR:B84:,PORT=agilFC,SCAN=1 second")
dbLoadRecords("db/asynRecord.db" "P=CNTR:B84:,R=asyn,PORT=agilFC,ADDR=-1,OMAX=0,IMAX=0")

###########################################################################################

# Start IOC
cd "${TOP}/iocBoot/${IOC}"
iocInit
