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

# MIUI version props - avoid repeate
# PRODUCT_VENDOR_PROPERTIES += \
#       ro.product.manufacturer=Xiaomi \
#	ro.product.brand=Xiaomi \
#	ro.product.name=Xiaomi \
#	ro.product.locale=zh-CN

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/permissions/privapp-com.xiaomi.xmsf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-com.xiaomi.xmsf.xml \
	$(LOCAL_PATH)/configs/sysconfig/hiddenapi-package-whitelist-xiaomi.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/hiddenapi-package-whitelist-xiaomi.xml

PRODUCT_PACKAGES += \
	XiaomiPush
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

# NFC CardEmulator
ifeq ($(TARGET_ADD_NFC_CARDEMULATOR),true)
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/permissions/privapp-com.yuanwofei.cardemulator.pro.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-com.yuanwofei.cardemulator.pro.xml \
	$(LOCAL_PATH)/configs/sysconfig/hiddenapi-package-whitelist-nfccardemulator.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/hiddenapi-package-whitelist-nfccardemulator.xml

PRODUCT_PACKAGES += \
	NFCCardEmulator
endif
