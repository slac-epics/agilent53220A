TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
#  Optimization of db files using dbst (DEFAULT: NO)
#DB_OPT = YES

# ============================================
# Installing protocol file for the
# Agilent 53220A Universal Freq. counter/timer
# ============================================
PROTO +=  Agilent53220A.proto

#----------------------------------------------------
# Create and install (or just install)
# databases, templates, substitutions like this

# Install Database Template:
# Database for Agilent 53220A Universal Freq. counter/timer 
# Derived database template file from LaserSoft IOC App

DB += Agilent53220A.db

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_TEMPLATE = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

