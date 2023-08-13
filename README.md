包含小米推送到非MIUI系统上，和华为应用市场到非华为/荣耀设备上  
Contain Xiaomi Push on non-MIUI systems as well as Huawei Appmarket on non-Huawei(or Honor) devices

## How-to
复制下方两行到设备树`device.mk`  
copy the following two lines to your device tree
```
# Vendor addons

$(call inherit-product, vendor/addons/xiaomi/apps/config.mk)
```
##### ● 我需要小米推送(XiaomiPush)
```
TARGET_ADD_XIAOMI_PUSH := true
```
##### ● 我需要华为应用市场(Huawei AppMarket) - 不工作
```
TARGET_ADD_HUAWEI_APPMARKET := true
```
##### ● 我需要Moto全家桶(Moto Apps)
```
TARGET_ADD_MOTO_SUITES := true
```
> 上方选项会忽视下方的单独配置  
+ 我需要Moto计算器(MotoCalculator)
```
TARGET_ADD_MOTO_CALCULATOR := true
```
+ 我需要Moto日历(MotoCalendar)
```
TARGET_ADD_MOTO_CALENDAR := true
```
+ 我需要Moto相册(MotoPhoto)
```
TARGET_ADD_MOTO_PHOTO := true
```
+ 我需要Moto便利贴(MotoNotes)
```
TARGET_ADD_MOTO_NOTES := true
```
##### ● 我需要Via浏览器(ViaBrowser)
```
TARGET_ADD_VIA_BROWSER := true
```

##### Credits
+ [SuperiorOS-devices](https://github.com/SuperiorOS-devices)
+ [MiPushFramework](https://github.com/NihilityT/MiPushFramework)
