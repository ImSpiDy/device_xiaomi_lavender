LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES :=  \
    Maps Youtube TurboPrebuilt CalendarGoogle \
    RecorderPrebuilt PrebuiltGmail Gmail2 \
    Drive AndroidAutoStubPrebuilt AndroidAutoStub \
    Wellbeing WellbeingPrebuilt PersonalSafety \
    TurboAdapter SafetyHubPrebuilt arcore TagGoogle \
    CalendarGooglePrebuilt Photos
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
