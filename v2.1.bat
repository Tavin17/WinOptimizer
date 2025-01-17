@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
set PLANO_NOME=WinOptimizer Plan
title WinOptimizer by Tavin17

color F

:msginicial

echo ================================================================
echo.

echo Feito por Gustavin (v2.1) 

echo.
echo ================================================================
echo.

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Arquivo não foi executado como administrador, reexecutando como adm...
    ::timeout /t 4 /nobreak >nul
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

color 0F
echo Serão feitas alterações, adições e aplicações em:

echo.

v2.1 - Windows 10

echo 1. Regedit. (106 arquivos serão alterados/criados)
echo 2. Serviços. (Desativação de 87 serviços desnecessários)
echo 3. CMD. (Aplicação de 15 comandos)
echo 4. Limpeza de arquivos temporários e cache.

echo.

echo OBS: O intuito desse código é maximizar a perfomance do seu computador para jogos sem precisar instalar nada, desativando muitas coisas que consomem memória e cpu no segundo plano do seu computador, diminuindo processos. 
echo Assim melhorando o InputLag e deixando o sistema operacional e o FPS nos jogos mais estáveis. Não sou responsável por nenhum tipo de dano em seu sistema operacional, use por sua conta e risco!

echo.

echo Algumas funções do Windows que podem não funcionar ou não funcionar corretamente após as otimizações:
echo Windows Update, Windows Copilot, Cortana, OneDrive, XboxGameBar, Conectar à uma impressora ou imprimir algo, Máquinas Virtuais.

echo.
echo ================================================================
echo.

echo Pressione Enter para iniciar as otimizações.
pause >nul >null 2>&1

echo.
cls

color 0A

echo ================================================================

echo.

echo Pressione [1] para ir para otimizações na regedit.
echo Pressione [2] para ir para desativação de serviços desnecessários.
echo Pressione [3] para ir para aplicação de comandos no CMD.
echo Pressione [4] para limpar arquivos temporários.

echo.

echo Pressione [M] para voltar para o menu inicial.
echo Pressione [L] para sair.

echo.

set /p continuar=""

cls

if /i "%continuar%"=="1" goto parte1
if /i "%continuar%"=="2" goto parte2
if /i "%continuar%"=="3" goto parte3
if /i "%continuar%"=="4" goto parte4

if /i "%continuar%"=="M" goto msginicial
if /i "%continuar%"=="L" exit

:parte1

echo ================================================================

echo.

color 06

reg add "HKCU\Software\Microsoft\GameBar" /v AllowAutoGameMode /t REG_DWORD /d 1 /f >null 2>&1
reg add "HKCU\Software\Microsoft\GameBar" /v AutoGameModeEnabled /t REG_DWORD /d 1 /f >null 2>&1
echo 2 Alterações feitas em HKCU\Software\Microsoft\GameBar.

reg add "HKLM\SYSTEM\ControlSet001\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d 2000 /f >nul 2>&1
reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 67108864 /f >nul 2>&1 
echo 2 Alterações feitas em HKLM\SYSTEM\ControlSet001\Control.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d 1 /f >nul 2>&1 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f >nul 2>&1 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeaturesSettingsOverrideMask" /t REG_DWORD /d 3 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d 1 /f >nul 2>&1
echo 6 Alterações feitas em HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d 0 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching.

reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d 0 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling.

reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d 2 /f >nul 2>&1
echo 7 Alterações feitas em HKCU\System\GameConfigStore.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo 1 Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR.

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f >nul 2>&1
echo 2 Alterações feitas em HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile.

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d High /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d High /f >nul 2>&1
echo 4 Alterações feitas em HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games.

::reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 2 /f >nul 2>&1
::echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects.

reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_DWORD /d 0 /f >nul 2>&1
::reg add "HKCU\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d 2 /f >nul 2>&1
echo 4 Alterações feitas em HKCU\Control Panel\Desktop.

reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "flags" /t REG_SZ /d 0 /f >nul 2>&1
echo 1 Alteração feita HKCU\Control Panel\Accessibility\MouseKeys.

reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "flags" /t REG_SZ /d 0 /f >nul 2>&1
echo 1 Alteração feita HKCU\Control Panel\Accessibility\StickyKeys.

reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "flags" /t REG_SZ /d 0 /f >nul 2>&1
echo 1 Alteração feita HKCU\Control Panel\Accessibility\Keyboard Response.

reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "flags" /t REG_SZ /d 0 /f >nul 2>&1
echo 1 Alteração feita HKCU\Control Panel\Accessibility\ToggleKeys.

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d 1 /f >nul 2>&1
echo 1 Alteração feita HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d 2 /f >nul 2>&1
echo 3 Alterações feitas em HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl.

reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\ApplicationManagement" /v "AllowGameDVR" /t REG_DWORD /d 0 /f >nul 2>&1
echo 1 Alteração feita HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\ApplicationManagement.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "GPU_SCHEDULER_MODE" /t REG_SZ /d 47 /f>nul 2>&1
echo 1 Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment.

reg add "HKLM\SYSTEM\ControlSet001\Services\Ndu" /v "Start" /t REG_DWORD /d 4 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SYSTEM\ControlSet001\Services\Ndu.

reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d 5 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\Dwm.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d 0 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "Enableboottrace" /t REG_DWORD /d 0 /f >nul 2>&1
echo 3 Alterações feitas em HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters.

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Schedule" /v "Start" /t REG_DWORD /d 2 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SYSTEM\CurrentControlSet\Services\Schedule.

reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass" /v "MouseDataQueueSize" /t REG_DWORD /d 40 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SYSTEM\CurrentControlSet\Services\mouclass.

reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d 40 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity.

reg add "HKLM\Software\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f >null 2>&1
echo 1 Alteração feita em HKLM\Software\Policies\Microsoft\SQMClient\Windows.

reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f >null 2>&1
echo 1 Alteração feita HKLM\Software\Policies\Microsoft\Windows\AppCompat.

reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /d 0 /t REG_DWORD /f >null 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f >null 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f >null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "LimitEnhancedDiagnosticDataWindowsAnalytics" /t REG_DWORD /d 0 /f >null 2>&1
echo 2 Alterações feitas em HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection.

reg add "HKLM\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v "NoGenTicket" /t REG_DWORD /d 1 /f >null 2>&1
echo 1 Alteração feita em HKLM\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform.

reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f >null 2>&1
echo 1 Alteração feita em HKLM\Software\Policies\Microsoft\Windows\Windows Error Reporting.

reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f >null 2>&1
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d 1 /f >null 2>&1
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d 1 /f >null 2>&1
echo 4 Alterações feita em HKLM\Software\Microsoft\Windows\Windows Error Reporting.

reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d 0 /f >null 2>&1
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultOverrideBehavior" /t REG_DWORD /d 1 /f >null 2>&1
echo 2 Alterações feita em HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d 0 /f >null 2>&1
echo 1 Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d 0 /f >null 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t REG_DWORD /d 2 /f >null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t REG_DWORD /d 1 /f >null 2>&1
echo 2 Alterações feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d 1 /f >null 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices" /v "TCGSecurityActivationDisabled" /t REG_DWORD /d 0 /f >null 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 /f >null 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\safer\codeidentifiers" /v "authenticodeenabled" /t REG_DWORD /d 0 /f >null 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\safer\codeidentifiers.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f >null 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo 1 Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d 0 /f >nul 2>&1
echo 1 Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t REG_DWORD /d 2 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d 1 /f >nul 2>&1
echo 5 Alterações feitas em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer.

:: Aba de privacidade nas configurações

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "Value" /t REG_DWORD /d 0/f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\Search.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary.

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableCdp" /t REG_DWORD /d 0 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\System.

reg add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d 4 /f >null 2>&1 
echo 1 Alteração feita em HKLM\SYSTEM\CurrentControlSet\Services\DoSvc.

:: Gpedit.msc

reg add "HKLM\Software\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d 0 /f >nul 2>&1
echo 1 Alteração feita em HKLM\Software\Policies\Microsoft\Windows\Psched.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d 1 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate.


echo.

echo Para abrir a regedit presione Win + R e digite regedit.

echo.

echo Otimizações na regedit concluídas.

color 0A

echo.
echo ================================================================

echo.

echo Pressione [1] para ir para otimizações na regedit.
echo Pressione [2] para ir para desativação de serviços desnecessários.
echo Pressione [3] para ir para aplicação de comandos no CMD.
echo Pressione [4] para limpar arquivos temporários.

echo.

echo Pressione [M] para voltar para o menu inicial.
echo Pressione [L] para sair.

echo.

set /p continuar=""

cls

if /i "%continuar%"=="1" goto parte1
if /i "%continuar%"=="2" goto parte2
if /i "%continuar%"=="3" goto parte3
if /i "%continuar%"=="4" goto parte4

if /i "%continuar%"=="M" goto msginicial
if /i "%continuar%"=="L" exit

:parte2

echo ================================================================
echo.

color 06

echo (Arquivos Offline)
call :stop_and_disable CscService
echo.

echo (Assistente de aquisição de imagens do Windows (WIA))
call :stop_and_disable StiSvc
echo.

echo (Atualizador de Fuso Horário Automático)
call :stop_and_disable tzautoupdate
echo.

echo (Autenticação Natural)
call :stop_and_disable NaturalAuthentication
echo.

echo (Auxiliar de IP)
call :stop_and_disable iphlpsvc
echo.

echo (Auxiliar NetBIOS TCP/IP)
call :stop_and_disable lmhosts
echo.

echo (Cartão inteligente)
call :stop_and_disable SCardSvr
echo.

echo (Cliente de rastreamento de link distribuído)
call :stop_and_disable TrkWks
echo.

echo (Configuração da Área de Trabalho Remota)
call :stop_and_disable SessionEnv
echo.

echo (Controles dos Pais)
call :stop_and_disable WpcMonSvc
echo.

echo (Coordenador de transações distribuídas)
call :stop_and_disable MSDTC
echo.

echo (Diagnostic Execution Service)
call :stop_and_disable diagsvc
echo.

echo (Estação de Trabalho)
call :stop_and_disable LanmanWorkstation
echo.

echo (Evento de Aquisição de Imagens Estáticas)
call :stop_and_disable WiaRpc
echo.

echo (DialogBlockingService)
call :stop_and_disable DialogBlockingService
echo.

echo (Exibir Serviço de Política)
call :stop_and_disable DispBrokerDesktopSvc
echo.

echo (Experiências do Usuário Conectado e Telemetria)
call :stop_and_disable DiagTrack
echo.

echo (Extensões e Notificações da Impressora)
call :stop_and_disable PrintNotify
echo.

echo (Fax)
call :stop_and_disable Fax
echo.

echo (Filtro de Teclado da Microsoft)
call :stop_and_disable MsKeyboardFilter
echo.

echo (Gerenciador de conexão de acesso remoto)
call :stop_and_disable RasMan
echo.

echo (Gerenciador de conexão de acesso remoto automático)
call :stop_and_disable RasAuto
echo.

echo (Gerenciador de Mapas Baixados)
call :stop_and_disable MapsBroker
echo.

echo (Gerenciador de NFC/SE e Pagamentos)
call :stop_and_disable SEMgrSvc
echo.

echo (Host do Serviço de Diagnóstico)
call :stop_and_disable WdiServiceHost
echo.

echo (Host do Sistema de Diagnósticos)
call :stop_and_disable WdiSystemHost
echo.

echo (ICS (Compartilhamento de Conexão com a Internet))
call :stop_and_disable SharedAccess
echo.

echo (Instalação Automática de Dispositivos Conectados à Rede)
call :stop_and_disable NcdAutoSetup
echo.

echo (Interface de Serviço de Convidado do Hyper-V)
call :stop_and_disable vmicguestinterface
echo.

echo (Logon de rede)
call :stop_and_disable Netlogon
echo.

echo (Logon secundário)
call :stop_and_disable seclogon
echo.

echo (Logs e alertas de desempenho)
call :stop_and_disable pla
echo.

echo (Mapeador da Descoberta de Topologia da Camada de Link)
call :stop_and_disable lltdsvc
echo.

echo (McpManagementService)
call :stop_and_disable McpManagementService
echo.

echo (Microsoft App-V Client)
call :stop_and_disable AppVClient
echo.

echo (OpenSSH Authentication Agent)
call :stop_and_disable ssh-agent
echo.

echo (Otimização de Entrega)
call :stop_and_disable DoSvc
echo.

echo (Pastas de Trabalho)
call :stop_and_disable workfolderssvc
echo.

echo (Política de Remoção de Cartão Inteligente)
call :stop_and_disable SCPolicySvc
echo.

echo (Propagação de Certificado)
call :stop_and_disable CertPropSvc
echo.

echo (Publicação de Recursos de Descoberta de Função)
call :stop_and_disable FDResPub
echo.

echo (Registro Remoto)
call :stop_and_disable RemoteRegistry
echo.

echo (Roteamento e Acesso Remoto)
call :stop_and_disable RemoteAccess
echo.

echo (Serviço Auxiliar de Compatibilidade de Programas)
call :stop_and_disable PcaSvc
echo.

echo (Serviço AVCTP)
call :stop_and_disable BthAvctpSvc
echo.

echo (Serviço de Biometria do Windows)
call :stop_and_disable WbioSrvc
echo.

echo (Serviço de Compartilhamento de Dados)
call :stop_and_disable DsSvc
echo.

echo (Serviço de Compartilhamento de Porta Net.Tcp)
call :stop_and_disable NetTcpPortSharing
echo.

echo (Serviço de Compartilhamento de Rede do Windows Media Player)
call :stop_and_disable WMPNetworkSvc
echo.

echo (Serviço de Configuração de Impressora)
call :stop_and_disable PrintDeviceConfigurationService
echo.

echo (Serviço de Criptografia de Unidade de Disco Bitlocker)
call :stop_and_disable BDESVC
echo.

echo (Serviço de Dados de Sensor)
call :stop_and_disable SensorDataService
echo.

echo (Serviço de Demonstração de Revenda)
call :stop_and_disable RetailDemo
echo.

echo (Serviço de Desligamento de Convidado do Hyper-V)
call :stop_and_disable vmicshutdown
echo.

echo (Serviço de Enumeração de Dispositivo de Cartão Inteligente)
call :stop_and_disable ScDeviceEnum
echo.

echo (Serviço de Geocalização)
call :stop_and_disable lfsvc
echo.

echo (Serviço de Hotspot Móvel do Windows)
call :stop_and_disable icssvc
echo.

echo (Serviço de Monitoramento de Sensor)
call :stop_and_disable SensrSvc
echo.

echo (Serviço de Plataforma de Dispositivos Conectados)
call :stop_and_disable CDPSvc
echo.

echo (Serviço de Política de Diagnóstico)
call :stop_and_disable DPS
echo.

echo (Serviço de Pulsação do Hyper-V)
call :stop_and_disable vmicheartbeat
echo.

echo (Serviço de Relatórios de Erro do Windows)
call :stop_and_disable WerSvc
echo.

echo (Serviço de Roteamento de mensagens de envio por Push WAP do Gerenciamento de Dispositivos)
call :stop_and_disable dmwappushservice
echo.

echo (Serviço de Sensor)
call :stop_and_disable SensorService
echo.

echo (Serviço de Simulação de Percepção do Windows)
call :stop_and_disable perceptionsimulation
echo.

echo (Serviço de Sincronização de Data/Hora do Hyper-V)
call :stop_and_disable vmictimesync
echo.

echo (Serviço de Telefonia)
call :stop_and_disable PhoneSvc
echo.

echo (Serviço de Troca de Dados do Hyper-V)
call :stop_and_disable vmickvpexchange
echo.

echo (Serviço de User Experience Virtualization)
call :stop_and_disable UevAgentService
echo.

echo (Serviço de Virtualização de Área de Trabalho Remota do Hyper-V)
call :stop_and_disable vmicrdv
echo.

echo (Serviço Direto do Hyper-V PowerShell)
call :stop_and_disable vmicvmsession
echo.

echo (Serviço de Participante do Programa Windows Insider)
call :stop_and_disable wisvc
echo.

echo (Serviço do Sistema de Notificações por Push do Windows)
call :stop_and_disable WpnService
echo.

echo (Serviço Enumerador de Dispositivos Portáteis)
call :stop_and_disable WPDBusEnum
echo.

echo (Serviço Gateway de Camada de Aplicativo)
call :stop_and_disable ALG
echo.

echo (Serviços de Área de Trabalho Remota)
call :stop_and_disable TermService
echo.

echo (Servidor de Quadros de Câmera do Windows)
call :stop_and_disable FrameServer
echo.

echo (Shared PC account Manager)
call :stop_and_disable shpamsvc
echo.

echo (Solicitante de Cópia de Sombra de Volume do Hyper-V)
call :stop_and_disable vmicvss
echo.

echo (Spooler de Impressão)
call :stop_and_disable Spooler
echo.

echo (Sysmain)
call :stop_and_disable SysMain
echo.

echo (Telefonia)
call :stop_and_disable TapiSrv
echo.

echo (WalletService)
call :stop_and_disable WalletService
echo.

echo (Windows Search)
call :stop_and_disable WSearch
echo.

echo (Windows Update)
call :stop_and_disable wuauserv
echo.

echo (Serviço de Coletor Padrão do Hub de Diagnóstico)
call :stop_and_disable Diagnosticshub.standardcollector.service
echo.

echo (Serviço de Realidade Compartilhada)
call :stop_and_disable SharedRealitySvc
echo.

echo (Serviço de Teclado Virtual e Painel de Manuscrito)
call :stop_and_disable TabletInputService
echo.

echo Para ver todos os serviços do Windows presione Win + R e digite services.msc.

echo.

echo Desativação de serviços desnecessários concluída.

color 0A

echo.
echo ================================================================

echo.

echo Pressione [1] para ir para otimizações na regedit.
echo Pressione [2] para ir para desativação de serviços desnecessários.
echo Pressione [3] para ir para aplicação de comandos no CMD.
echo Pressione [4] para limpar arquivos temporários.

echo.

echo Pressione [M] para voltar para o menu inicial.
echo Pressione [L] para sair.

echo.

set /p continuar=""

cls

if /i "%continuar%"=="1" goto parte1
if /i "%continuar%"=="2" goto parte2
if /i "%continuar%"=="3" goto parte3
if /i "%continuar%"=="4" goto parte4

if /i "%continuar%"=="M" goto msginicial
if /i "%continuar%"=="L" exit

:parte3

echo ================================================================
echo.

color 06

Fsutil behavior set memoryusage 2 >nul 2>&1
Fsutil behavior set disabledeletenotify 0 >nul 2>&1
echo Comandos Fsutil aplicados.

bcdedit /set useplatformtick yes >nul 2>&1
bcdedit /set disabledynamictick yes >nul 2>&1
bcdedit /deletevalue useplatformclock false >nul 2>&1
bcdedit /set tscsyncpolicy Enhanced FPS >nul 2>&1
bcdedit /set tscsyncpolicy Legacy input >nul 2>&1
echo Comandos bcdedit aplicados.

powercfg.exe /hibernate off >nul 2>&1
echo Hibernação desativada.

ipconfig /flushdns >nul 2>&1
netsh winsock reset >nul 2>&1
echo Cache de DNS limpo.

:: ----------------------------------------------------------------------------------------------

powercfg /list | findstr /i "%PLANO_NOME%" > nul

if %errorlevel% equ 0 (
    echo Plano de Energia "%PLANO_NOME%" já ativado.
    goto escolha
) 

echo Deseja aplicar plano de energia máximo desempenho? (WinOptimizer)? [S/N]

set /p continuar=""

if /i "%continuar%"=="S" goto plano
if /i "%continuar%"=="N" goto escolha

:plano
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Tavin17/WinOptimizer/main/Power.pow' -OutFile '%USERPROFILE%\Downloads\Power.pow'" >nul 2>&1

powercfg /import "%USERPROFILE%\Downloads\Power.pow" 2ea46c19-adf6-4b49-bf6a-755d7f5d9ea1 >nul 2>&1

powercfg /setactive 2ea46c19-adf6-4b49-bf6a-755d7f5d9ea1 >nul 2>&1
del "%USERPROFILE%\Downloads\Power.pow" >nul 2>&1
echo Plano de energia "%PLANO_NOME%" ativado.

:: ----------------------------------------------------------------------------------------------

:escolha
echo Deseja desinstalar XboxGameBar? [S/N]

set /p continuar=""
if /i "%continuar%"=="S" goto pw
if /i "%continuar%"=="N" goto pw1

:pw
PowerShell -command "Get-AppxPackage Microsoft.XboxGamingOverlay | Remove-AppxPackage" >nul 2>&1
echo XboxGameBar desinstalada.

:: ----------------------------------------------------------------------------------------------

winget uninstall "windows web experience pack" >nul 2>&1
echo Widgets desinstalados.

:pw1
echo Otimize (SSD) ou desfragmente (HD) seus discos e desative a otimização agendada.
dfrgui 
echo Otimização/Desfragmentação de disco concluída.

echo Conclua a limpeza do seu disco.
net session >nul 2>&1

cleanmgr
echo Limpeza de disco concluída.

echo.

echo Comandos aplicados.


color 0A

echo.
echo ================================================================

echo.

echo Pressione [1] para ir para otimizações na regedit.
echo Pressione [2] para ir para desativação de serviços desnecessários.
echo Pressione [3] para ir para aplicação de comandos no CMD.
echo Pressione [4] para limpar arquivos temporários.

echo.

echo Pressione [M] para voltar para o menu inicial.
echo Pressione [L] para sair.

echo.

set /p continuar=""

cls

if /i "%continuar%"=="1" goto parte1
if /i "%continuar%"=="2" goto parte2
if /i "%continuar%"=="3" goto parte3
if /i "%continuar%"=="4" goto parte4

if /i "%continuar%"=="M" goto msginicial
if /i "%continuar%"=="L" exit

:parte4

net stop wuauserv >nul 2>&1
net stop bits >nul 2>&1

echo ================================================================
echo.


color 06

rd /s /q "%temp%" >nul 2>&1
mkdir "%temp%" >nul 2>&1
echo Pasta %%temp%% limpa.

rd /s /q "C:\Windows\Temp" >nul 2>&1
mkdir "C:\Windows\Temp" >nul 2>&1
echo Pasta temp limpa.

rd /s /q "C:\Windows\Prefetch" >nul 2>&1
mkdir "C:\Windows\Prefetch" >nul 2>&1
echo Pasta prefetch limpa.

del /f /q "%userprofile%\Recent\*" >nul 2>&1
echo Pasta recent limpa.

del c:\windows\logs\cbs\*.log >nul 2>&1
del C:\Windows\Logs\MoSetup\*.log >nul 2>&1
del C:\Windows\Panther\*.log /s /q >nul 2>&1
del C:\Windows\inf\*.log /s /q >nul 2>&1
del C:\Windows\logs\*.log /s /q >nul 2>&1
del C:\Windows\SoftwareDistribution\*.log /s /q >nul 2>&1
del C:\Windows\Microsoft.NET\*.log /s /q >nul 2>&1
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q >nul 2>&1
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q >nul 2>&1
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q >nul 2>&1
del C:\Users\%USERNAME%\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q >nul 2>&1
echo Cache limpo.

rd /s /q C:\$Recycle.Bin >nul 2>&1
echo Lixeira esvaziada.

echo. 

echo Reiniciando BITS...
net start bits >nul 2>&1
echo BITS Reiniciado.

echo.

echo Limpeza de arquivos temporários concluída.

color 0A

echo.
echo ================================================================

echo.

echo Pressione [1] para ir para otimizações na regedit.
echo Pressione [2] para ir para desativação de serviços desnecessários.
echo Pressione [3] para ir para aplicação de comandos no CMD.
echo Pressione [4] para limpar arquivos temporários.

echo.

echo Pressione [M] para voltar para o menu inicial.
echo Pressione [L] para sair.

echo.

set /p continuar=""

cls

if /i "%continuar%"=="1" goto parte1
if /i "%continuar%"=="2" goto parte2
if /i "%continuar%"=="3" goto parte3
if /i "%continuar%"=="4" goto parte4

if /i "%continuar%"=="M" goto msginicial
if /i "%continuar%"=="L" exit

pause
exit

:stop_and_disable
set service=%1

sc qc %service% >nul 2>&1
if %errorlevel% neq 0 (
    ::echo O Serviço %service% não foi encontrado.
    echo Não foi encontrado.
    goto :eof
)

sc qc %service% | findstr /i "start    demand" >nul
if %errorlevel% neq 0 (
    ::echo O Serviço %service% já está desativado.
    echo Já está desativado.
    goto :eof
)

sc stop %service% >nul 2>&1

sc config %service% start= disabled >nul 2>&1

sc qc %service% | findstr /i "start    disabled" >nul
if %errorlevel% equ 0 (
    ::echo O Serviço %service% foi desativado com sucesso.
    echo Foi desativado com sucesso.
)

goto :eof