include vendor/kingbri/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/kingbri/config/BoardConfigQcom.mk
endif

include vendor/kingbri/config/BoardConfigSoong.mk
