ifneq ($(filter shooterk,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif
