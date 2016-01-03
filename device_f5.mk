$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

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
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
	frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1 \
persist.sys.usb.config=mtp \
persist.service.acm.enable=0 \
ro.secure=1 \
ro.allow.mock.location=0 \
ro.debuggable=0 \
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
