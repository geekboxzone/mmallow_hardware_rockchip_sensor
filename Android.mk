# Can't have both mpu and st sensor hal.
ifeq ($(BOARD_SENSOR_MPU),true)
include $(call all-named-subdir-makefiles,mpu)
else ifeq ($(BOARD_SENSOR_MPU_VR),true)
include $(call all-named-subdir-makefiles,mpu_vr)
else ifeq ($(BOARD_SENSOR_ST),true)
include $(call all-named-subdir-makefiles,st)
endif
