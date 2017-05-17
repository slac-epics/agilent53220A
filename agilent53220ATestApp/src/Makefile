TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = agilent53220ATest
# agilent53220ATest.dbd will be created and installed
DBD += agilent53220ATest.dbd

# agilent53220ATest.dbd will be made up from these files:
agilent53220ATest_DBD += base.dbd

# Include dbd files from all support applications:
agilent53220ATest_DBD += asyn.dbd
#agilent53220ATest_DBD += asynRecord.dbd
agilent53220ATest_DBD += drvAsynIPPort.dbd
agilent53220ATest_DBD += stream.dbd

# Add all the support libraries needed by this IOC
agilent53220ATest_LIBS += stream
agilent53220ATest_LIBS += asyn

# Add support for PCRE
pcre_DIR = $(PCRE_LIB)
agilent53220ATest_LIBS += pcre

# agilent53220ATest_registerRecordDeviceDriver.cpp derives from agilent53220ATest.dbd
agilent53220ATest_SRCS += agilent53220ATest_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
agilent53220ATest_SRCS_DEFAULT += agilent53220ATestMain.cpp
agilent53220ATest_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#agilent53220ATest_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
agilent53220ATest_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

