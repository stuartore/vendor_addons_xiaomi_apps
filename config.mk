PRODUCT_SOONG_NAMESPACES += \
	vendor/addons/xiaomi/apps

# Permissions & White Lists
# Mipush
# MIUI version props
ifeq ($(TARGET_ADD_XIAOMI_PUSH),true)
PRODUCT_VENDOR_PROPERTIES += \
        ro.fota.oem=Xiaomi \
        ro.rom.zone=1 \
        ro.mi.development=false \
        ro.miui.ui.version.code=11 \
        ro.miui.ui.version.name=V125 \
        ro.miui.version.code_time=1625587200 \
        ro.miui.build.region=cn \
        ro.miui.internal.storage=/sdcard/ \
        ro.miui.cust_variant=cn \
        ro.miui.region=CN \
        ro.vendor.miui.region=CN \
        ro.product.locale.region=CN \
        ro.product.locale.language=zh

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/permissions/privapp-com.xiaomi.xmsf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-com.xiaomi.xmsf.xml \
	$(LOCAL_PATH)/configs/sysconfig/hiddenapi-package-whitelist-xiaomi.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/hiddenapi-package-whitelist-xiaomi.xml

PRODUCT_PACKAGES += \
	XiaomiPush
endif

# Huawei Appmarket
ifeq ($(TARGET_ADD_HUAWEI_APPMARKET),true)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/permissions/privapp-com.huawei.appmarket.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.huawei.appmarket.xml \
	$(LOCAL_PATH)/configs/sysconfig/hiddenapi-package-whitelist-huawei.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig//hiddenapi-package-whitelist-huawei.xml \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libfb.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libfb.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libfb.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libfb.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libnative-imagetranscoder.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libnative-imagetranscoder.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libnative-imagetranscoder.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libnative-imagetranscoder.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libhilog.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libhilog.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libhilog.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libhilog.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libimagepipeline.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libimagepipeline.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libimagepipeline.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libimagepipeline.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libapms_ndk_anr.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libapms_ndk_anr.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libapms_ndk_anr.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libapms_ndk_anr.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libjslite.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libjslite.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libjslite.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libjslite.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libnative-filters.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libnative-filters.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libnative-filters.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libnative-filters.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libyoga.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libyoga.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libyoga.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libyoga.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libgifimage.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libgifimage.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libgifimage.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libgifimage.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libapppatch.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libapppatch.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libapppatch.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libapppatch.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libaegissec.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libaegissec.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libaegissec.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libaegissec.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libstatic-webp.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libstatic-webp.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libstatic-webp.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libstatic-webp.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libscannative.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libscannative.so \
	$(LOCAL_PATH)/HuaweiAppmarket/lib64/libscannative.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libscannative.so

PRODUCT_PACKAGES += \
	HuaweiAppMarket
endif

# Moto Apps
ifeq ($(TARGET_ADD_MOTO_SUITES),true)
PRODUCT_PACKAGES += \
	MotoCalculator \
	MotoCalendar \
	MotoPhoto \
	MotoNotes
else
	ifeq ($(TARGET_ADD_MOTO_CALCULATOR),true)
PRODUCT_PACKAGES += \
	MotoCalculator
	endif

	ifeq ($(TARGET_ADD_MOTO_CALENDAR),true)
PRODUCT_PACKAGES += \
	MotoCalendar
	endif

	ifeq ($(TARGET_ADD_MOTO_PHOTO),true)
PRODUCT_PACKAGES += \
	MotoPhoto
	endif

	ifeq ($(TARGET_ADD_MOTO_NOTES),true)
PRODUCT_PACKAGES += \
	MotoNotes
	endif
endif

# ViaBrowser
ifeq ($(TARGET_ADD_VIA_BROWSER),true)
PRODUCT_PACKAGES += \
    ViaBrowser
endif
