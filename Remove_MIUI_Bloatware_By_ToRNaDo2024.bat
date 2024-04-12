@echo off
:: Get the ADB Path 
set /p Y=Enter adb.exe folder path:    
cd %Y%
adb devices



echo:
echo:
echo:
echo:
echo:
echo:                    Android Bloatware Batch By ToRNaDo 2024            
echo:       ______________________________________________________________
echo:                                                            
echo:             [1] Remove Bloatware
echo:             [2] Reinstall Bloatware 
echo:             __________________________________________________      
echo:                                                                   
echo:             [0] Exit
echo:       ______________________________________________________________
echo:  
echo:  
echo:  



choice /C:120 /N
set _erl=%errorlevel%


:: For loop for Remove Bloatware 
 if %_erl%==1 call :Remove_Bloatware & cls & endlocal & goto :Done 
 if %_erl%==2 call :Reinstall_Bloatware & cls & endlocal & goto :Done 
  if %_erl%==3 exit /b
 
 

 
 :Remove_Bloatware
for %%X in (

"com.android.browser"
"com.android.chrome"
"com.android.email"
"com.android.thememanager"
"com.android.wallpaper.livepicker"
"com.facebook.services"
"com.facebook.system"
"com.facebook.appmanager"
"com.android.dreams.basic"
"com.android.dreams.phototable"
"com.android.egg"
"com.android.hotwordenrollment.okgoogle"



"com.google.android.apps.tachyon"
"com.google.android.feedback"

"com.google.android.googlequicksearchbox"
"com.google.android.marvin.talkback"
"com.google.android.music"


"com.google.android.talk"
"com.google.android.tts"
"com.google.android.videos"
"com.google.android.youtube"
"com.google.ar.lens"

:: Miui Apps

"com.mfashiongallery.emag"
"com.mi.globalTrendNews"
"com.mi.health"
"com.mi.android.globalpersonalassistant"
"com.mi.global.shop"
"com.mi.global.bbs"
"com.mi.webkit.core"
"com.mipay.wallet.in"
"com.miui.analytics"
"com.miui.android.fashiongallery"
"com.miui.gallery"

"com.miui.cloudbackup"
"com.miui.cloudservice"
"com.miui.cloudservice.sysbase"
"com.miui.hybrid"
"com.miui.hybrid.accessory"
"com.miui.misound"
"com.miui.msa.global"

"com.miui.klo.bugreport"

"com.miui.player"
"com.miui.providers.weather"

"com.miui.translationservice"
"com.miui.translation.kingsoft"
"com.miui.translation.youdao"
"com.miui.touchassistant"
"com.miui.videoplayer"
"com.miui.zman"

"com.miui.weather2"
"com.miui.yellowpage"
"com.xiaomi.calendar "
"com.xiaomi.channel"

"com.swiftkey.swiftkeyconfigurator"

"com.xiaomi.glgm"
"com.xiaomi.joyose"
"com.xiaomi.simactivate.service"

"com.xiaomi.micloud.sdk"
"com.xiaomi.midrop"
"com.xiaomi.mipicks"
"com.xiaomi.oversea.ecom"
"com.xiaomi.payment"
"com.xiaomi.xmsf" 
"com.xiaomi.xmsfkeeper"

:: Facebook , Netflix  ....etc

"cn.wps.xiaomi.abroad.lite"
"com.samsung.aasaservice"
"in.amazon.mShop.android.shopping"
"com.netflix.partner.activation
"com.netflix.mediaclient"
"com.opera.app.news"
"com.opera.branding"
"com.opera.branding.news"
"com.tencent.soter.soterserver"
"com.facebook.katana"



) do (
echo  Trying To Remove  %%X
    adb shell pm uninstall -k --user 0 %%X

)
adb reboot
echo Done Phone Now Restarting 
pause 
exit /b







:Reinstall_Bloatware  

for %%R in (

"com.android.browser"
"com.android.chrome"
"com.android.email"
"com.android.thememanager"
"com.android.wallpaper.livepicker"
"com.facebook.services"
"com.facebook.system"
"com.facebook.appmanager"
"com.android.dreams.basic"
"com.android.dreams.phototable"
"com.android.egg"
"com.android.hotwordenrollment.okgoogle"



"com.google.android.apps.tachyon"
"com.google.android.feedback"
"com.google.android.gm"
"com.google.android.googlequicksearchbox"
"com.google.android.marvin.talkback"
"com.google.android.music"

"com.google.android.syncadapters.contacts"
"com.google.android.talk"
"com.google.android.tts"
"com.google.android.videos"
"com.google.android.youtube"
"com.google.ar.lens"

:: Miui Apps

"com.mfashiongallery.emag"
"com.mi.globalTrendNews"
"com.mi.health"
"com.mi.android.globalpersonalassistant"
"com.mi.global.shop"
"com.mi.global.bbs"
"com.mi.webkit.core"
"com.mipay.wallet.in"
"com.miui.analytics"
"com.miui.android.fashiongallery"
"com.miui.gallery"

"com.miui.cloudbackup"
"com.miui.cloudservice"
"com.miui.cloudservice.sysbase"
"com.miui.hybrid"
"com.miui.hybrid.accessory"
"com.miui.misound"
"com.miui.msa.global"

"com.miui.klo.bugreport"
"com.miui.miwallpaper"
"com.miui.player"
"com.miui.providers.weather"

"com.miui.translationservice"
"com.miui.translation.kingsoft"
"com.miui.translation.youdao"
"com.miui.touchassistant"
"com.miui.videoplayer"
"com.miui.zman"

"com.miui.weather2"
"com.miui.yellowpage"
"com.xiaomi.calendar "
"com.xiaomi.channel"

"com.swiftkey.swiftkeyconfigurator"

"com.xiaomi.glgm"
"com.xiaomi.joyose"
"com.xiaomi.simactivate.service"

"com.xiaomi.micloud.sdk"
"com.xiaomi.midrop"
"com.xiaomi.mipicks"
"com.xiaomi.oversea.ecom"
"com.xiaomi.payment"
"com.xiaomi.xmsf" 
"com.xiaomi.xmsfkeeper"

:: Facebook , Netflix  ....etc

"cn.wps.xiaomi.abroad.lite"
"com.samsung.aasaservice"
"in.amazon.mShop.android.shopping"
"com.netflix.partner.activation
"com.netflix.mediaclient"
"com.opera.app.news"
"com.opera.branding"
"com.opera.branding.news"
"com.tencent.soter.soterserver"
"com.facebook.katana"



) do (
echo Trying To ReInstall %%R 
 adb shell cmd package install-existing %%R

)

adb reboot
echo Done Phone Now Restarting 
pause 
exit /b

:Done
echo Done 
 


::Optional
::Theme Module ==> "com.android.thememanager.module"
::Play Store ==> "com.android.vending"
::Play Store Service ==> "com.google.android.gms"
::Gboard ==> "com.google.android.inputmethod.latin"
::Google Login Service ==> "com.google.android.gsf.login"
::Explorer ==> "com.mi.android.globalFileexplorer"
::Find device ==> "com.xiaomi.finddevice"
::Mi Account (sensitive) ==> "com.xiaomi.finddevice""com.xiaomi.account"
::Mi Secuirty (sensitive) ==> "com.xiaomi.finddevice""com.xiaomi.mirecycle"
::wallpaper (Will be Black Baground)  "com.miui.miwallpaper"
::END-80#
