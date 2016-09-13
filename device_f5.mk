$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/mediatek/mt6753_common/device_mt6753.mk)

$(call inherit-product-if-exists, vendor/doogee/f5/f5-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/doogee/f5/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/doogee/f5/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
    
# initrc
PRODUCT_COPY_FILES += \
    device/doogee/f5/fstab.mt6735:root/fstab.mt6735 \
    device/doogee/f5/root/init.rc:root/init.rc \
    device/doogee/f5/root/init.mt6735.rc:root/init.mt6735.rc \
	device/doogee/f5/root/init.ssd_nomuser.rc:root/init.ssd_nomuser.rc \
	device/doogee/f5/root/init.xlog.rc:root/init.xlog.rc \
	device/doogee/f5/root/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
	device/doogee/f5/root/init.recovery.mt6735.rc:root/init.recovery.mt6735.rc \
	device/doogee/f5/root/init.aee.rc:root/init.aee.rc \
	device/doogee/f5/root/init.project.rc:root/init.project.rc \
	device/doogee/f5/root/init.modem.rc:root/init.modem.rc \
	device/doogee/f5/root/ueventd.rc:root/ueventd.rc \
	device/doogee/f5/root/meta_init.rc:root/meta_init.rc \
	device/doogee/f5/root/meta_init.project.rc:root/meta_init.project.rc \
	device/doogee/f5/root/meta_init.modem.rc:root/meta_init.modem.rc \
	device/doogee/f5/root/factory_init.rc:root/factory_init.rc \
	device/doogee/f5/root/factory_init.project.rc:root/factory_init.project.rc
	
	# TODO: Add correct permissions
#PRODUCT_COPY_FILES += \
#	frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
#	frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0 \
persist.sys.usb.config=mtp,adb \
persist.service.acm.enable=0 \
persist.service.adb.enable=1 \
ro.secure=0 \
ro.allow.mock.location=0 \
ro.debuggable=1 \
ro.zygote=zygote64_32 \
ro.mount.fs=EXT4 \
camera.disable_zsl_mode=1 \
dalvik.vm.dex2oat-Xms=64m \
dalvik.vm.dex2oat-Xmx=512m \
dalvik.vm.image-dex2oat-Xms=64m \
dalvik.vm.image-dex2oat-Xmx=64m \
ro.dalvik.vm.native.bridge=0

PRODUCT_NAME := full_f5
PRODUCT_DEVICE := f5
