::__          ___        ____        _   _           _              
::\ \        / (_)      / __ \      | | (_)         (_)             
:: \ \  /\  / / _ _ __ | |  | |_ __ | |_ _ _ __ ___  _ _______ _ __ 
::  \ \/  \/ / | | '_ \| |  | | '_ \| __| | '_ ` _ \| |_  / _ \ '__|
::   \  /\  /  | | | | | |__| | |_) | |_| | | | | | | |/ /  __/ |   
::    \/  \/   |_|_| |_|\____/| .__/ \__|_|_| |_| |_|_/___\___|_|   
::                           | |                                   
::                           |_|   

@echo off
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b >nul 2>&1 
chcp 65001 >nul
setlocal enabledelayedexpansion
title WinOptimizer
call :Colors

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Arquivo não foi executado como administrador, reexecutando como adm...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

:pr2
chcp 65001 >nul

echo.
echo.
echo.
echo.

echo.!COLOR_GREEN!                                                                             ██╗    ██╗██╗███╗   ██╗    ██████╗ ██████╗ ████████╗██╗███╗   ███╗██╗███████╗███████╗██████╗ 
echo.!COLOR_GREEN!                                                                             ██║    ██║██║████╗  ██║   ██╔═══██╗██╔══██╗╚══██╔══╝██║████╗ ████║██║╚══███╔╝██╔════╝██╔══██╗
echo.!COLOR_GREEN!                                                                             ██║ █╗ ██║██║██╔██╗ ██║   ██║   ██║██████╔╝   ██║   ██║██╔████╔██║██║  ███╔╝ █████╗  ██████╔╝
echo.!COLOR_GREEN!                                                                             ██║███╗██║██║██║╚██╗██║   ██║   ██║██╔═══╝    ██║   ██║██║╚██╔╝██║██║ ███╔╝  ██╔══╝  ██╔══██╗
echo.!COLOR_GREEN!                                                                             ╚███╔███╔╝██║██║ ╚████║   ╚██████╔╝██║        ██║   ██║██║ ╚═╝ ██║██║███████╗███████╗██║  ██║
echo.!COLOR_GREEN!                                                                              ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝    ╚═════╝ ╚═╝        ╚═╝   ╚═╝╚═╝     ╚═╝╚═╝╚══════╝╚══════╝╚═╝  ╚═╝

echo.                                                                                                                                                                        !COLOR_ORANGE!v5.2!COLOR_WHITE!
echo !COLOR_RED!════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════!COLOR_WHITE!
echo.
echo                                                                                          !COLOR_ORANGE![1]!COLOR_WHITE! Ir para otimizações          !COLOR_ORANGE![2]!COLOR_WHITE! Criar ponto de restauração   
echo.
echo.
echo. 
                                             
set /p continuar=""

cls

if /i "%continuar%"=="1" goto msginicial
if /i "%continuar%"=="2" goto pr

if "%continuar%"=="" goto nochoice
goto prmsg2

:pr
chcp 437 >nul
powershell "Checkpoint-Computer -Description 'WinOptimizer restore point'"
powershell "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Ponto criado com sucesso.', 'WinOptimizer', [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information);}" >nul 2>&1
chcp 65001 >nul
goto msginicial



:msginicial
chcp 65001 >nul
cls
echo.
echo.
echo.
echo.


echo.!COLOR_GREEN!                                                                             ██╗    ██╗██╗███╗   ██╗    ██████╗ ██████╗ ████████╗██╗███╗   ███╗██╗███████╗███████╗██████╗ 
echo.!COLOR_GREEN!                                                                             ██║    ██║██║████╗  ██║   ██╔═══██╗██╔══██╗╚══██╔══╝██║████╗ ████║██║╚══███╔╝██╔════╝██╔══██╗
echo.!COLOR_GREEN!                                                                             ██║ █╗ ██║██║██╔██╗ ██║   ██║   ██║██████╔╝   ██║   ██║██╔████╔██║██║  ███╔╝ █████╗  ██████╔╝
echo.!COLOR_GREEN!                                                                             ██║███╗██║██║██║╚██╗██║   ██║   ██║██╔═══╝    ██║   ██║██║╚██╔╝██║██║ ███╔╝  ██╔══╝  ██╔══██╗
echo.!COLOR_GREEN!                                                                             ╚███╔███╔╝██║██║ ╚████║   ╚██████╔╝██║        ██║   ██║██║ ╚═╝ ██║██║███████╗███████╗██║  ██║
echo.!COLOR_GREEN!                                                                              ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝    ╚═════╝ ╚═╝        ╚═╝   ╚═╝╚═╝     ╚═╝╚═╝╚══════╝╚══════╝╚═╝  ╚═╝

echo.                                                                                                                                                                        !COLOR_ORANGE!v5.2!COLOR_WHITE!
echo !COLOR_RED!════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════!COLOR_WHITE!
echo.
echo.
echo                                                                                !COLOR_GREEN![1]!COLOR_WHITE! Otimizar regedit                            !COLOR_GREEN![4]!COLOR_WHITE! Otimizar memória RAM
echo.
echo                                                                                !COLOR_GREEN![2]!COLOR_WHITE! Desativar serviços desnecessários           !COLOR_GREEN![5]!COLOR_WHITE! Limpar arquivos temporários e cache
echo.
echo                                                                                !COLOR_GREEN![3]!COLOR_WHITE! Aplicar comandos CMD                        !COLOR_GREEN![6]!COLOR_WHITE! Desativar tarefas agendadas desnecessárias
echo.
echo                                                                                !COLOR_GREEN![G]!COLOR_WHITE! Repositório do código                       !COLOR_ORANGE![L]!COLOR_WHITE! Sair
echo.
echo.
echo.

echo                                                                                                         !COLOR_RED![R]!COLOR_WHITE! Usar ponto de restauração           

echo.                                                                                            

set /p continuar2=""

cls

if "%continuar2%"=="" goto nochoice2
if /i "%continuar2%"=="1" goto regedit
if /i "%continuar2%"=="2" goto servicos
if /i "%continuar2%"=="3" goto comandos
if /i "%continuar2%"=="4" goto memoria
if /i "%continuar2%"=="5" goto aqvtmp
if /i "%continuar2%"=="6" goto tarefas

if /i "%continuar2%"=="R" rstrui.exe && goto msginicial
if /i "%continuar2%"=="G" start https://github.com/Tavin17/WinOptimizer && goto msginicial
if /i "%continuar2%"=="L" exit

goto prmsg

:regedit

echo ════════════════════════════════════════════════════════════════
echo.
echo              ═══════════════════════════════════
echo                  !COLOR_GREEN!Otimização geral do sistema!COLOR_WHITE!
echo              ═══════════════════════════════════

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d 1 /f >nul 2>&1 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f >nul 2>&1 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeaturesSettingsOverrideMask" /t REG_DWORD /d 3 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "Enableboottrace" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\ControlSet001\Services\Ndu" /v "Start" /t REG_DWORD /d 4 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Schedule" /v "Start" /t REG_DWORD /d 2 /f >nul 2>&1 rem Agendador de Tarefas (automático)
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices" /v "TCGSecurityActivationDisabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Installer" /v "DisableCoInstallers" /t REG_DWORD /d 1 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /d 0 /t REG_DWORD /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /V "EnableSmartScreen" /t REG_DWORD /D 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d Off /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "SmartScreenEnabled" /t REG_SZ /d Off /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Multimedia\Audio" /v "UserDuckingPreference" /t REG_DWORD /d 3 /f >nul 2>&1

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d 0 /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Stickers" /v "EnableStickers" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{2cc5ca98-6485-489a-920e-b3e88a6ccce3}" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v "AllowNewsAndInterests" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot" /v "TurnOffWindowsCopilot" /t REG_DWORD /d 1 /f >nul 2>&1

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" /v 01 /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCopilotButton" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "SafeSearchMode" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsMSACloudSearchEnabled" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsAADCloudSearchEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Start" /v "ShowRecentList" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d 1 /f >nul 2>&1

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d 1 /f >nul 2>&1 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Segment Heap" /v "Enabled" /t REG_DWORD /d 1 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Segment Heap" /v "OverrideServerSKU" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ScopeType" /t REG_SZ /d Client /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "WaitForIdleState" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d 1 /f >nul 2>&1

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt "/t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden"/t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "IoPriority" /t REG_DWORD /d 3 /f >nul 2>&1

reg add "HKCU\Software\Microsoft\Lighting" /v "AmbientLightingEnabled" /t REG_DWORD /d 0 /f >nul 2>&1 
reg add "HKCU\Software\Microsoft\Lighting" /v "ControlledByForegroundApp" /t REG_DWORD /d 0 /f >nul 2>&1 

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CrossDeviceResume\Configuration" /v "IsResumeAllowed" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\CrossDeviceResume\Configuration" /v "IsOneDriveResumeAllowed" /t REG_DWORD /d 0 /f >nul 2>&1

DISM /Online /Disable-Feature /FeatureName:"Recall" /Remove >nul 2>&1
dism /online /remove-package /package-name:Microsoft.Windows.Copilot >nul 2>&1
echo.
echo  • !COLOR_ORANGE!Otimizações gerais do sistema !COLOR_GREEN!aplicadas com sucesso.!COLOR_WHITE!
echo.

echo              ═══════════════════════════════════
echo                     !COLOR_GREEN!Otimização para Games!COLOR_WHITE!
echo              ═══════════════════════════════════
echo.

reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\ApplicationManagement" /v "AllowGameDVR" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 1 /f >nul 2>&1

reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d 2 /f >nul 2>&1

reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d 2 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HeterogeneousPolicy" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7" /v "Attributes" /t REG_DWORD /d 2 /f >nul 2>&1
powercfg.exe /hibernate off >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HibernateEnabled" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d 0 /f /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowHibernateOption" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepStudyDisabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Quota System" /v "EnableCpuQuota" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\DirectX" /v "DisableHWOverlay" /t REG_DWORD /d 1 /f >nul 2>&1

reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "GamepadNexusChordEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
 

echo  • !COLOR_ORANGE!Otimizações para Games!COLOR_GREEN! aplicadas com sucesso.!COLOR_WHITE!
echo.

echo              ═══════════════════════════════════
echo                 !COLOR_GREEN!Otimizações de Latência e GPU!COLOR_WHITE!
echo              ═══════════════════════════════════
echo.

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f >nul 2>&1

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d High /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d High /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d 1000 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "WaitToKillServiceTimeout" /t REG_DWORD /d 1000 /f >nul 2>&1
reg add "HKLM\SYSTEM\ControlSet001\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d 1000 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d 1000 /f >nul 2>&1
reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "flags" /t REG_SZ /d 0 /f >nul 2>&1

reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "flags" /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "flags" /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "flags" /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass" /v "MouseDataQueueSize" /t REG_DWORD /d 40 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d 40 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "GPU_SCHEDULER_MODE" /t REG_SZ /d 47 /f>nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "SerializeTimerExpiration" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power"/v "PowerRequestOverrideEnabled" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "EnableMMCSS" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "AlwaysUseDirectFlip" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "DirectXUserGlobalSettings" /t REG_SZ /d VRROptimizeEnable=0;SwapEffectUpgradeEnable=1; /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IgnoreTimerResolutionRequests" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d 5 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "SerializeTimerExpiration" /t REG_DWORD /d 0 /f >nul 2>&1
echo  • !COLOR_ORANGE!Otimizações de latência e GPU!COLOR_GREEN! aplicadas com sucesso.!COLOR_WHITE!
echo.

echo              ═══════════════════════════════════
echo                      !COLOR_GREEN!Otimizações de Rede!COLOR_WHITE!
echo              ═══════════════════════════════════
echo.

netsh int ip set global taskoffload=enabled >nul 2>&1 
netsh int tcp set supplemental internet congestionprovider=ctcp >nul 2>&1 
netsh int tcp set global ecncapability=enabled >nul 2>&1 

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DownloadMode" /d 0 /t REG_DWORD /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d 64 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d 30 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t REG_DWORD /d 32 /f >nul 2>&1
reg add "HKLM\System\ControlSet001\services\NlaSvc\Parameters\Internet" /v "EnableActiveProbing" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d 6 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d 4 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d 5 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d 7 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPNoDelay" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d 1 /f >nul 2>&1
ipconfig /flushdns >nul 2>&1
echo  • !COLOR_ORANGE!Otimizações de rede!COLOR_GREEN! aplicadas com sucesso.!COLOR_WHITE!
echo.

echo              ═══════════════════════════════════
echo                    !COLOR_GREEN!Privacidade e Segurança!COLOR_WHITE!
echo              ═══════════════════════════════════
echo.


reg add "HKLM\SYSTEM\CurrentControlSet\Control\BitLocker" /v "PreventDeviceEncryption" /t REG_DWORD /d 1 /f >nul 2>&1
echo • !COLOR_ORANGE!Criptografia do dispositivo!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKCU\Software\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /v "HasAccepted" /t REG_DWORD /d 0 /f >nul 2>&1
echo • !COLOR_ORANGE!Controle por voz!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CPSS\Store\InkingAndTypingPersonalization" /v "Value" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d 0 /f >nul 2>&1
echo • !COLOR_ORANGE!Personalização de escrita à tinta e digitação!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "ShowGlobalPrompts" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\Maps" /v "AutoUpdateEnabled" /t REG_DWORD /d 0 /f >nul 2>&1 
echo • !COLOR_ORANGE!Localização!COLOR_GREEN! desativada com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "LockScreenToastEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
:: Configurações -> Sistema > Notificações e ações
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_TOASTS_ABOVE_LOCK" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /v "ScoobeSystemSettingEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WindowsUpdate.Notification" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.StartupApp" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.AutoPlay" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.LowDisk" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.Print.Notification" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.WiFiNetworkManager" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1 
echo • !COLOR_ORANGE!Notificações!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo • !COLOR_ORANGE!Informações da conta!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo • !COLOR_ORANGE!Contatos!COLOR_GREEN! desativados com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo • !COLOR_ORANGE!Calendário!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo • !COLOR_ORANGE!Histórico de chamadas!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo • !COLOR_ORANGE!Email!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo • !COLOR_ORANGE!Tarefas!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo • !COLOR_ORANGE!Sistema de mensagens!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo • !COLOR_ORANGE!Rádios!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo • !COLOR_ORANGE!Outros dispositivos!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "Value" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t REG_DWORD /d 2 /f >nul 2>&1
echo • !COLOR_ORANGE!Aplicativos em segundo plano!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo • !COLOR_ORANGE!Diagnóstico de aplicativos!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo • !COLOR_ORANGE!Chamadas telefônicas!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureProgrammatic" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo • !COLOR_ORANGE!Capturas de tela e gravações de tela!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureWithoutBorder" /v "Value" /t REG_SZ /d Allow /f >nul 2>&1
echo • !COLOR_ORANGE!Bordas da captura de tela!COLOR_GREEN! ativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\systemAIModels" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo • !COLOR_ORANGE!Geração de texto e imagem!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCloudSearch" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortanaAboveLock" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowIndexingEncryptedStoresOrItems" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AlwaysUseAutoLangDetection" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d 3 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWeb" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableRemovableDriveIndexing" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableWebSearch" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "EnableDynamicContentInWSB" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventRemoteQueries" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventUsingAdvancedIndexingOptions" /t REG_DWORD /d 1 /f >nul 2>&1
echo • !COLOR_ORANGE!Cortana (w10)!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo • !COLOR_ORANGE!Isolamento de núcleo!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableCdp" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "CdpSessionUserAuthzPolicy" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "NearShareChannelUserAuthzPolicy" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CDP" /v "RomeSdkChannelUserAuthzPolicy" /t REG_DWORD /d 0 /f >nul 2>&1
echo • !COLOR_ORANGE!Experiências compartilhadas!COLOR_GREEN! desativado com sucesso.!COLOR_WHITE!

echo.

echo              ═══════════════════════════════════
echo                           !COLOR_GREEN!Telemetria!COLOR_WHITE!
echo              ═══════════════════════════════════
echo.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /d 0 /t REG_DWORD /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "LimitEnhancedDiagnosticDataWindowsAnalytics" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowCommercialDataPipeline" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "MicrosoftEdgeDataOptIn" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "MaxTelemetryAllowed" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v "NoGenTicket" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultOverrideBehavior" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t REG_DWORD /d 1 /f >nul 2>&1

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoLockScreenCamera" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\Software\Microsoft\SQMClient\Windows" /v "CEIPEnable" /d 0 /t REG_DWORD /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDeviceSearchHistoryEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /d 1 /t REG_DWORD /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableTailoredExperiencesWithDiagnosticData" /t REG_DWORD /d 1 /f >nul 2>&1

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartActionPlatform\SmartClipboard" /v Disabled /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput" /v "AllowLinguisticDataCollection" /t REG_DWORD /D 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v "DisableAIDataAnalysis" /t REG_DWORD /d 1 /f >nul 2>&1

reg add "HKLM\SOFTWARE\Policies\Microsoft\EdgeUpdate" /v "CreateDesktopShortcutDefault" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "PersonalizationReportingEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ShowRecommendationsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "HideFirstRunExperience" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "UserFeedbackAllowed" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ConfigureDoNotTrack" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "AlternateErrorPagesEnable" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeCollectionsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeShoppingAssistantEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "MicrosoftEdgeInsiderPromotionEnabled" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "ShowMicrosoftRewards" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "WebWidgetAllowed" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "DiagnosticData" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "EdgeAssetDeliveryServiceEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "CryptoWalletEnabled" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v "WalletDonationEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Assist" /v "NoImplicitFeedback" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\FlightSettings" /v "UserPreferredRedirectStage" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Clipboard" /v "EnableClipboardHistory" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "TrackNblOwner" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Control\Diagnostics\Performance" /v "DisablediagnosticTracing" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\WDI\{9c5a40da-b965-4fc3-8781-88dd50a6299d}" /v "ScenarioExecutionEnabled" /t REG_DWORD /d 0 /f>nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "DoReport" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AllowTelemetry" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisableEngine" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "DisablePCA" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\PCHealth\ErrorReporting" /v "DoReport" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableConsumerAccountStateContent" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v "DisableCloudOptimizedContent" /t REG_DWORD /d 1 /f >nul 2>&1

reg add "HKLM\Software\Policies\Microsoft\Speech" /v "AllowSpeechModelUpdate" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\WindowsStore" /v "AutoDownload" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\Maps" /v "AutoDownloadAndUpdateMapData" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\Maps" /v "AllowUntriggeredNetworkTrafficOnSettingsPage" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\MicrosoftEdge\Main" /v "AllowPrelaunch" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKLM\Software\Policies\Microsoft\MicrosoftEdge\TabPreloader" /v "AllowTabPreloading" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "FeatureManagementEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenEnabled" /t REG_DWORD /d 0 /f >nul 2>&1 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SlideshowEnabled" /t REG_DWORD /d 0 /f >nul 2>&1 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d 0 /f >nul 2>&1 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d 0 /f >nul 2>&1 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338387Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 /f >nul 2>&1 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d 0 /f >nul 2>&1 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d 0 /f >nul 2>&1 
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353698Enabled" /t REG_DWORD /d 0 /f >nul 2>&1

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "RunningState" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "OnlineServicesEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Narrator\NoRoam" /v "ScriptingEnabled" /t REG_DWORD /d 0 /f >nul 2>&1

echo • !COLOR_ORANGE!76 mudanças!COLOR_GREEN! concluidas com êxito.!COLOR_WHITE!
echo.

echo.╔═══════════════════════════════════════════════════════╗
echo ║           !COLOR_GREEN!Otimizações de registro concluidas.!COLOR_WHITE!         ║
echo.╚═══════════════════════════════════════════════════════╝

echo.
echo ════════════════════════════════════════════════════════════════
echo.

echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
pause >nul 2>&1
goto msginicial


:servicos

echo ════════════════════════════════════════════════════════════════
echo.
echo              ═══════════════════════════════════
echo                   !COLOR_GREEN!Gerenciamento de Serviços!COLOR_WHITE!
echo              ═══════════════════════════════════
echo.
echo !COLOR_ORANGE![AVISO]!COLOR_WHITE! Serviços de Impressoras e Máquinas Virtuais (Hyper-V) serão !COLOR_RED!desativados!COLOR_WHITE! caso encontrados, se você usa emuladores ou impressoras, ambos serão afetados, deseja desativar mesmo assim?

echo.
echo.
echo.

echo               !COLOR_GREEN![1]!COLOR_WHITE! Todos os serviços                 !COLOR_GREEN![3]!COLOR_WHITE! Todos, exceto Hyper-V
echo.
echo               !COLOR_GREEN![2]!COLOR_WHITE! Todos, exceto Impressoras         !COLOR_RED![V]!COLOR_WHITE! Voltar

set /p serv=""
echo.

if /i "%serv%"=="1" goto todos_serviços
if /i "%serv%"=="2" goto exc_impressora
if /i "%serv%"=="3" goto exc_hyperv
if /i "%serv%"=="V" goto msginicial

if "%serv%"=="" cls & goto nochoice2
cls & goto prmsg

:todos_serviços
bcdedit /set hypervisorlaunchtype off >nul 2>&1
echo ════════════════════════════════════════════════════════════════
echo.
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

echo (Coletor de Eventos do Windows)
call :stop_and_disable Wecsvc
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

echo (Integridade e Experiências Otimizadas do Windows)
call :stop_and_disable whesvc
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

echo (Microsoft Edge Elevation Service)
call :stop_and_disable MicrosoftEdgeElevationService
echo.

echo (Microsoft Edge Update Service [edgeupdate])
call :stop_and_disable edgeupdate
echo.

echo (Microsoft Edge Update Service [edgeupdatem])
call :stop_and_disable edgeupdatem
echo.

echo (Monitor do Servidor de Quadro da Câmera do Windows)
call :stop_and_disable FrameServerMonitor
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

echo (Serviço de Cache de Fontes do Windows)
call :stop_and_disable FontCache
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d 4 /f >nul 2>&1
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

echo (Serviço de Coletor Padrão do Hub de Diagnóstico)
call :stop_and_disable Diagnosticshub.standardcollector.service
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

echo (Serviço de Monitoramento de Desempenho Gráfico)
call :stop_and_disable GraphicsPerfSvc
echo.

echo (Serviço de Monitoramento de Sensor)
call :stop_and_disable SensrSvc
echo.

echo (Serviço de Política de Diagnóstico)
call :stop_and_disable DPS
echo.

echo (Serviço de Pulsação do Hyper-V)
call :stop_and_disable vmicheartbeat
echo.

echo (Serviço de Realidade Compartilhada)
call :stop_and_disable SharedRealitySvc
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

echo (Serviço de Teclado Virtual e Painel de Manuscrito)
call :stop_and_disable TabletInputService
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

echo (WSAIFabricSvc)
call :stop_and_disable WSAIFabricSvc
echo. !COLOR_WHITE!

echo.╔═══════════════════════════════════════════════════════════════════╗
echo ║         !COLOR_GREEN!Desativação de serviços desnecessários concluída.!COLOR_WHITE!         ║
echo.╚═══════════════════════════════════════════════════════════════════╝

echo.
echo ════════════════════════════════════════════════════════════════
echo.

echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
pause >nul 2>&1
goto msginicial

REM ------------------------------------------------------------------------------------------------------------------------------------------------------------------

:exc_impressora
bcdedit /set hypervisorlaunchtype off >nul 2>&1
echo ════════════════════════════════════════════════════════════════
echo.
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

echo (Coletor de Eventos do Windows)
call :stop_and_disable Wecsvc
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
call :start_and_enable PrintNotify
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

echo (Integridade e Experiências Otimizadas do Windows)
call :stop_and_disable whesvc
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

echo (Microsoft Edge Elevation Service)
call :stop_and_disable MicrosoftEdgeElevationService
echo.

echo (Microsoft Edge Update Service [edgeupdate])
call :stop_and_disable edgeupdate
echo.

echo (Microsoft Edge Update Service [edgeupdatem])
call :stop_and_disable edgeupdatem
echo.

echo (Monitor do Servidor de Quadro da Câmera do Windows)
call :stop_and_disable FrameServerMonitor
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

echo (Serviço de Cache de Fontes do Windows)
call :stop_and_disable FontCache
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d 4 /f >nul 2>&1
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
call :start_and_enable PrintDeviceConfigurationService
echo.

echo (Serviço de Coletor Padrão do Hub de Diagnóstico)
call :stop_and_disable Diagnosticshub.standardcollector.service
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

echo (Serviço de Monitoramento de Desempenho Gráfico)
call :stop_and_disable GraphicsPerfSvc
echo.

echo (Serviço de Monitoramento de Sensor)
call :stop_and_disable SensrSvc
echo.

echo (Serviço de Política de Diagnóstico)
call :stop_and_disable DPS
echo.

echo (Serviço de Pulsação do Hyper-V)
call :stop_and_disable vmicheartbeat
echo.

echo (Serviço de Realidade Compartilhada)
call :stop_and_disable SharedRealitySvc
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

echo (Serviço de Teclado Virtual e Painel de Manuscrito)
call :stop_and_disable TabletInputService
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
call :start_and_enable Spooler
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

echo (WSAIFabricSvc)
call :stop_and_disable WSAIFabricSvc
echo. !COLOR_WHITE!

echo.╔═══════════════════════════════════════════════════════════════════╗
echo ║         !COLOR_GREEN!Desativação de serviços desnecessários concluída.!COLOR_WHITE!         ║
echo.╚═══════════════════════════════════════════════════════════════════╝

echo.
echo ════════════════════════════════════════════════════════════════
echo.

echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
pause >nul 2>&1
goto msginicial

REM ------------------------------------------------------------------------------------------------------------------------------------------------------------------

:exc_hyperv
bcdedit /set hypervisorlaunchtype on >nul 2>&1
echo ════════════════════════════════════════════════════════════════
echo.
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

echo (Coletor de Eventos do Windows)
call :stop_and_disable Wecsvc
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

echo (Integridade e Experiências Otimizadas do Windows)
call :stop_and_disable whesvc
echo.

echo (Interface de Serviço de Convidado do Hyper-V)
call :start_and_enable vmicguestinterface
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
call :start_and_enable AppVClient
echo.

echo (Microsoft Edge Elevation Service)
call :stop_and_disable MicrosoftEdgeElevationService
echo.

echo (Microsoft Edge Update Service [edgeupdate])
call :stop_and_disable edgeupdate
echo.

echo (Microsoft Edge Update Service [edgeupdatem])
call :stop_and_disable edgeupdatem
echo.

echo (Monitor do Servidor de Quadro da Câmera do Windows)
call :stop_and_disable FrameServerMonitor
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

echo (Serviço de Cache de Fontes do Windows)
call :stop_and_disable FontCache
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d 4 /f >nul 2>&1
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

echo (Serviço de Coletor Padrão do Hub de Diagnóstico)
call :stop_and_disable Diagnosticshub.standardcollector.service
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
call :start_and_enable vmicshutdown
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

echo (Serviço de Monitoramento de Desempenho Gráfico)
call :stop_and_disable GraphicsPerfSvc
echo.

echo (Serviço de Monitoramento de Sensor)
call :stop_and_disable SensrSvc
echo.

echo (Serviço de Política de Diagnóstico)
call :stop_and_disable DPS
echo.

echo (Serviço de Pulsação do Hyper-V)
call :start_and_enable vmicheartbeat
echo.

echo (Serviço de Realidade Compartilhada)
call :stop_and_disable SharedRealitySvc
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
call :start_and_enable perceptionsimulation
echo.

echo (Serviço de Sincronização de Data/Hora do Hyper-V)
call :start_and_enable vmictimesync
echo.

echo (Serviço de Teclado Virtual e Painel de Manuscrito)
call :stop_and_disable TabletInputService
echo.

echo (Serviço de Telefonia)
call :stop_and_disable PhoneSvc
echo.

echo (Serviço de Troca de Dados do Hyper-V)
call :start_and_enable vmickvpexchange
echo.

echo (Serviço de User Experience Virtualization)
call :start_and_enable UevAgentService
echo.

echo (Serviço de Virtualização de Área de Trabalho Remota do Hyper-V)
call :start_and_enable vmicrdv
echo.

echo (Serviço Direto do Hyper-V PowerShell)
call :start_and_enable vmicvmsession
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
call :start_and_enable ALG
echo.

echo (Serviços de Área de Trabalho Remota)
call :start_and_enable TermService
echo.

echo (Servidor de Quadros de Câmera do Windows)
call :stop_and_disable FrameServer
echo.

echo (Shared PC account Manager)
call :stop_and_disable shpamsvc
echo.

echo (Solicitante de Cópia de Sombra de Volume do Hyper-V)
call :start_and_enable vmicvss
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

echo (WSAIFabricSvc)
call :stop_and_disable WSAIFabricSvc
echo. !COLOR_WHITE!

echo.╔═══════════════════════════════════════════════════════════════════╗
echo ║         !COLOR_GREEN!Desativação de serviços desnecessários concluída.!COLOR_WHITE!         ║
echo.╚═══════════════════════════════════════════════════════════════════╝

echo.
echo ════════════════════════════════════════════════════════════════
echo.

echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
pause >nul 2>&1
goto msginicial

:comandos

echo ════════════════════════════════════════════════════════════════
echo.

Fsutil behavior set memoryusage 2 >nul 2>&1
Fsutil behavior set disabledeletenotify 0 >nul 2>&1
Fsutil behavior set disableLastAccess 1 >nul 2>&1
fsutil.exe 8dot3name set 1 >nul 2>&1
echo • !COLOR_GREEN!Comandos Fsutil aplicados.!COLOR_WHITE!

bcdedit /set useplatformtick yes >nul 2>&1
bcdedit /set disabledynamictick yes >nul 2>&1
bcdedit /deletevalue useplatformclock >nul 2>&1
bcdedit /set tscsyncpolicy Enhanced >nul 2>&1
echo • !COLOR_GREEN!Comandos bcdedit aplicados.!COLOR_WHITE!

winget uninstall "windows web experience pack" --accept-source-agreements
echo • !COLOR_GREEN!Widgets removidos.!COLOR_WHITE!

defrag /C /L >nul 2>&1
echo • !COLOR_GREEN!Unidades otimizadas.!COLOR_WHITE!

start "" cleanmgr

echo.!COLOR_WHITE!

echo.╔══════════════════════════════════════════════════════════════╗
echo ║         !COLOR_GREEN!Comandos aplicados e executados com sucesso.!COLOR_WHITE!         ║
echo.╚══════════════════════════════════════════════════════════════╝

echo.
echo ════════════════════════════════════════════════════════════════
echo.

echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
pause >nul 2>&1
goto msginicial

:aqvtmp
echo ════════════════════════════════════════════════════════════════
echo.


del /s /f /q %temp% >nul 2>&1
echo • !COLOR_GREEN!Pasta %%temp%% limpa.!COLOR_WHITE!

del /s /f /q %windir%\Temp >nul 2>&1
echo • !COLOR_GREEN!Pasta temp limpa.!COLOR_WHITE!

del /s /f /q "%windir%\Prefetch" >nul 2>&1
echo • !COLOR_GREEN!Pasta prefetch limpa.!COLOR_WHITE!

del /s /f /q "%userprofile%\Recent" >nul 2>&1
echo • !COLOR_GREEN!Pasta recent limpa.!COLOR_WHITE!

del /s /q "%windir%\Panther\*.log" >nul 2>&1
del /s /q "%windir%\inf\*.log" >nul 2>&1
del /s /q "%windir%\SoftwareDistribution\*.log" >nul 2>&1
del /s /q "%windir%\Microsoft.NET\*.log" >nul 2>&1
del /s /q "%localappdata%\Microsoft\Windows\WebCache\*.log" >nul 2>&1
del /s /q "%localappdata%\Microsoft\Windows\SettingSync\*.log" >nul 2>&1
del /s /q "%localappdata%\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp" >nul 2>&1
ipconfig /flushdns >nul 2>&1
netsh winsock reset >nul 2>&1

for /d /r "%userprofile%\AppData" %%a in (*Cache_Data*) do (
    if exist "%%a" rmdir /s /q "%%a"
) >nul 2>&1
echo • !COLOR_GREEN!Cache limpo.!COLOR_WHITE! (!COLOR_ORANGE!Dê F5 em sites que não carregarem corretamente.!COLOR_WHITE!)

rd /s /q C:\$Recycle.Bin >nul 2>&1
echo • !COLOR_GREEN!Lixeira esvaziada.!COLOR_WHITE!
echo. 

echo.!COLOR_WHITE!

echo.╔═════════════════════════════════════════════════════════════════════╗
echo ║         !COLOR_GREEN!Limpeza de arquivos temporários e cache concluidas.!COLOR_WHITE!         ║
echo.╚═════════════════════════════════════════════════════════════════════╝

echo.
echo ════════════════════════════════════════════════════════════════
echo.

echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
pause >nul 2>&1
goto msginicial

:tarefas
echo ════════════════════════════════════════════════════════════════
echo.

echo • !COLOR_GREEN!Desativando tarefas agendadas desnecessárias, por favor aguarde...!COLOR_ORANGE!
echo.

schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent" >nul 2>&1 
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\FileHistory\File History (maintenance mode)" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /disable
echo.
schtasks end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\HelloFace\FODCleanupTask" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\HelloFace\FODCleanupTask" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Feedback\Siuf\DmClient" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Feedback\Siuf\DmClient" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Application Experience\PcaPatchDbTask" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\PcaPatchDbTask" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Device Information\Device" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Device Information\Device" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Device Information\Device User" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Device Information\Device User" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Defrag\ScheduledDefrag" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Defrag\ScheduledDefrag" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Maps\MapsUpdateTask" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Maps\MapsUpdateTask" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\SettingSync\NetworkStateChangeTask" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\SettingSync\NetworkStateChangeTask" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Application Experience\MareBackup" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\MareBackup" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser Exp" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser Exp" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Clip\ClipESU" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Clip\ClipESU" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Clip\ClipESUConsumer" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Clip\ClipESUConsumer" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Clip\ClipESUConsumerProcessECUpdate" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Clip\ClipESUConsumerProcessECUpdate" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Clip\ClipESUConsumerProcessPreOrder" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Clip\ClipESUConsumerProcessPreOrder" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Clip\ClipESUConsumerProcessRefund" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Clip\ClipESUConsumerProcessRefund" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Clip\EnableClipESU" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Clip\EnableClipESU" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Hotpatch\Monitoring" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Hotpatch\Monitoring" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Location\Notifications" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Location\Notifications" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\UNP\RunUpdateNotificationMgr" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\UNP\RunUpdateNotificationMgr" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\UpdateOrchestrator\Reboot_AC" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\UpdateOrchestrator\Reboot_AC" /disable
echo.
schtasks /end /tn "\Microsoft\Windows\UpdateOrchestrator\Reboot_Battery" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\UpdateOrchestrator\Reboot_Battery" /disable
echo.!COLOR_WHITE!

echo.╔══════════════════════════════════════════════════════════════════════╗
echo ║       !COLOR_GREEN!Tarefas agendadas desnecessárias desativadas com sucesso.!COLOR_WHITE!      ║
echo.╚══════════════════════════════════════════════════════════════════════╝

echo.
echo ════════════════════════════════════════════════════════════════
echo.

echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
pause >nul 2>&1
goto msginicial

:memoria
echo ════════════════════════════════════════════════════════════════
echo.

echo Escolha a opção baseada na quantidade de RAM em que você possui. Selecione !COLOR_ORANGE!P!COLOR_WHITE! caso seja nenhuma das opções.!COLOR_WHITE!

echo.
echo.
echo.

echo                !COLOR_GREEN![1]!COLOR_WHITE! 2Gb RAM         !COLOR_GREEN![8]!COLOR_WHITE! 20Gb RAM
echo.
echo                !COLOR_GREEN![2]!COLOR_WHITE! 4Gb RAM         !COLOR_GREEN![9]!COLOR_WHITE! 24Gb RAM
echo.
echo                !COLOR_GREEN![3]!COLOR_WHITE! 6Gb RAM         !COLOR_GREEN![10]!COLOR_WHITE! 32Gb RAM
echo.
echo                !COLOR_GREEN![4]!COLOR_WHITE! 8Gb RAM         !COLOR_GREEN![11]!COLOR_WHITE! 64Gb RAM
echo.
echo                !COLOR_GREEN![5]!COLOR_WHITE! 10Gb RAM        !COLOR_ORANGE![P]!COLOR_WHITE! Padrão
echo.
echo                !COLOR_GREEN![6]!COLOR_WHITE! 12Gb RAM        !COLOR_RED![V]!COLOR_WHITE! Voltar
echo.
echo                !COLOR_GREEN![7]!COLOR_WHITE! 16Gb RAM

echo.
echo.
echo.

set /p valor=""
echo.

if /i "%valor%"=="" goto nochoice3

if /i "%valor%"=="P" (
    reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x0380000 /f >nul 2>&1
    echo.╔══════════════════════════════════════════════════════════════════════════╗
    echo ║         !COLOR_ORANGE!SvcHostSplitThresholdInKB !COLOR_GREEN!alterado para !COLOR_ORANGE!3,5Gb!COLOR_GREEN! com sucesso.!COLOR_WHITE!       ║
    echo.╚══════════════════════════════════════════════════════════════════════════╝
    echo.
    echo ════════════════════════════════════════════════════════════════
    echo.

    echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
    pause >nul 2>&1
    goto msginicial
    )
if /i "%valor%"=="1" (
    reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x02047152 /f >nul 2>&1
    echo.╔═════════════════════════════════════════════════════════════════════════╗
    echo ║         !COLOR_ORANGE!SvcHostSplitThresholdInKB !COLOR_GREEN!alterado para !COLOR_ORANGE!2Gb!COLOR_GREEN! com sucesso.!COLOR_WHITE!        ║
    echo.╚═════════════════════════════════════════════════════════════════════════╝
    echo.
    echo ════════════════════════════════════════════════════════════════
    echo.

    echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
    pause >nul 2>&1
    goto msginicial
    )
if /i "%valor%"=="2" (
    reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x04194304 /f >nul 2>&1
    echo.╔═════════════════════════════════════════════════════════════════════════╗
    echo ║         !COLOR_ORANGE!SvcHostSplitThresholdInKB !COLOR_GREEN!alterado para !COLOR_ORANGE!4Gb!COLOR_GREEN! com sucesso.!COLOR_WHITE!        ║
    echo.╚═════════════════════════════════════════════════════════════════════════╝
    echo.
    echo ════════════════════════════════════════════════════════════════
    echo.

    echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
    pause >nul 2>&1
    goto msginicial
    )
if /i "%valor%"=="3" (
    reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x06291456 /f >nul 2>&1
    echo.╔═════════════════════════════════════════════════════════════════════════╗
    echo ║         !COLOR_ORANGE!SvcHostSplitThresholdInKB !COLOR_GREEN!alterado para !COLOR_ORANGE!6Gb!COLOR_GREEN! com sucesso.!COLOR_WHITE!        ║
    echo.╚═════════════════════════════════════════════════════════════════════════╝
    echo.
    echo ════════════════════════════════════════════════════════════════
    echo.

    echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
    pause >nul 2>&1
    goto msginicial
    )
if /i "%valor%"=="4" (
    reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x08388608 /f >nul 2>&1
    echo.╔═════════════════════════════════════════════════════════════════════════╗
    echo ║         !COLOR_ORANGE!SvcHostSplitThresholdInKB !COLOR_GREEN!alterado para !COLOR_ORANGE!8Gb!COLOR_GREEN! com sucesso.!COLOR_WHITE!        ║
    echo.╚═════════════════════════════════════════════════════════════════════════╝
    echo.
    echo ════════════════════════════════════════════════════════════════
    echo.

    echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
    pause >nul 2>&1
    goto msginicial
    )
if /i "%valor%"=="5" (
    reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x010877452 /f >nul 2>&1
    echo.╔══════════════════════════════════════════════════════════════════════════╗
    echo ║         !COLOR_ORANGE!SvcHostSplitThresholdInKB !COLOR_GREEN!alterado para !COLOR_ORANGE!10Gb!COLOR_GREEN! com sucesso.!COLOR_WHITE!        ║
    echo.╚══════════════════════════════════════════════════════════════════════════╝
    echo.
    echo ════════════════════════════════════════════════════════════════
    echo.

    echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
    pause >nul 2>&1
    goto msginicial
    )
if /i "%valor%"=="6" (
    reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x012582912 /f >nul 2>&1
    echo.╔══════════════════════════════════════════════════════════════════════════╗
    echo ║         !COLOR_ORANGE!SvcHostSplitThresholdInKB !COLOR_GREEN!alterado para !COLOR_ORANGE!12Gb!COLOR_GREEN! com sucesso.!COLOR_WHITE!        ║
    echo.╚══════════════════════════════════════════════════════════════════════════╝
    echo.
    echo ════════════════════════════════════════════════════════════════
    echo.

    echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
    pause >nul 2>&1
    goto msginicial
    )
if /i "%valor%"=="7" (
    reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x016777216 /f >nul 2>&1
    echo.╔══════════════════════════════════════════════════════════════════════════╗
    echo ║         !COLOR_ORANGE!SvcHostSplitThresholdInKB !COLOR_GREEN!alterado para !COLOR_ORANGE!16Gb!COLOR_GREEN! com sucesso.!COLOR_WHITE!        ║
    echo.╚══════════════════════════════════════════════════════════════════════════╝
    echo.
    echo ════════════════════════════════════════════════════════════════
    echo.

    echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
    pause >nul 2>&1
    goto msginicial
    )
if /i "%valor%"=="8" (
    reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x022446860 /f >nul 2>&1
    echo.╔══════════════════════════════════════════════════════════════════════════╗
    echo ║         !COLOR_ORANGE!SvcHostSplitThresholdInKB !COLOR_GREEN!alterado para !COLOR_ORANGE!20Gb!COLOR_GREEN! com sucesso.!COLOR_WHITE!        ║
    echo.╚══════════════════════════════════════════════════════════════════════════╝
    echo.
    echo ════════════════════════════════════════════════════════════════
    echo.

    echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
    pause >nul 2>&1
    goto msginicial
    )
if /i "%valor%"=="9" (
    reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x024433220 /f >nul 2>&1
    echo.╔══════════════════════════════════════════════════════════════════════════╗
    echo ║         !COLOR_ORANGE!SvcHostSplitThresholdInKB !COLOR_GREEN!alterado para !COLOR_ORANGE!24Gb!COLOR_GREEN! com sucesso.!COLOR_WHITE!        ║
    echo.╚══════════════════════════════════════════════════════════════════════════╝
    echo.
    echo ════════════════════════════════════════════════════════════════
    echo.

    echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
    pause >nul 2>&1
    goto msginicial
    )
if /i "%valor%"=="10" (
    reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x033554432 /f >nul 2>&1
    echo.╔══════════════════════════════════════════════════════════════════════════╗
    echo ║         !COLOR_ORANGE!SvcHostSplitThresholdInKB !COLOR_GREEN!alterado para !COLOR_ORANGE!32Gb!COLOR_GREEN! com sucesso.!COLOR_WHITE!        ║
    echo.╚══════════════════════════════════════════════════════════════════════════╝
    echo.
    echo ════════════════════════════════════════════════════════════════
    echo.

    echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
    pause >nul 2>&1
    goto msginicial
    )
if /i "%valor%"=="11" (
    reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 0x067108864 /f >nul 2>&1
    echo.╔══════════════════════════════════════════════════════════════════════════╗
    echo ║         !COLOR_ORANGE!SvcHostSplitThresholdInKB !COLOR_GREEN!alterado para !COLOR_ORANGE!64Gb!COLOR_GREEN! com sucesso.!COLOR_WHITE!        ║
    echo.╚══════════════════════════════════════════════════════════════════════════╝
    echo.
    echo ════════════════════════════════════════════════════════════════
    echo.

    echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
    pause >nul 2>&1
    goto msginicial
    )
if /i "%valor%"=="V" goto msginicial

cls
goto prmsg3

pause
exit

:stop_and_disable
set service=%1

sc qc %service% >nul 2>&1
if %errorlevel% neq 0 (
    echo !COLOR_RED!Não foi encontrado.!COLOR_WHITE!
    goto :eof
)

sc qc %service% | findstr /i "start    demand" >nul
if %errorlevel% neq 0 (
    echo !COLOR_ORANGE!Já está desativado.!COLOR_WHITE!
    goto :eof
)

sc stop %service% >nul 2>&1

sc config %service% start= disabled >nul 2>&1

sc qc %service% | findstr /i "start    disabled" >nul
if %errorlevel% equ 0 (
    echo !COLOR_GREEN!Foi desativado com sucesso.!COLOR_WHITE!
    goto :eof
)

:start_and_enable
set service=%1

sc qc %service% >nul 2>&1
if %errorlevel% neq 0 (
    echo !COLOR_RED!Não foi encontrado.!COLOR_WHITE!
    goto :eof
)

sc qc %service% | findstr /i "start    disabled" >nul
if %errorlevel% neq 0 (
    echo !COLOR_ORANGE!Já está habilitado.!COLOR_WHITE!
    goto :eof
)

sc config %service% start= auto >nul 2>&1
sc start %service% >nul 2>&1

sc qc %service% | findstr /i "start    auto" >nul
if %errorlevel% equ 0 (
    echo !COLOR_GREEN!Foi iniciado e definido como automático com sucesso.!COLOR_WHITE!
    goto :eof
)

:prmsg
chcp 65001 >nul
echo ════════════════════════════════════════════════════════════════!COLOR_WHITE!
echo.
echo !COLOR_RED!ERRO 001:!COLOR_WHITE!
echo Valor inválido...
echo.
echo ════════════════════════════════════════════════════════════════
timeout /t 3 /nobreak >nul 2>&1
cls
goto msginicial

:prmsg2
chcp 65001 >nul
echo ════════════════════════════════════════════════════════════════!COLOR_WHITE!
echo.
echo !COLOR_RED!ERRO 001:!COLOR_WHITE!
echo Valor inválido...
echo.
echo ════════════════════════════════════════════════════════════════
timeout /t 3 /nobreak >nul 2>&1
cls
goto pr2

:prmsg3
chcp 65001 >nul
cls
echo ════════════════════════════════════════════════════════════════!COLOR_WHITE!
echo.
echo !COLOR_RED!ERRO 001:!COLOR_WHITE!
echo Valor inválido...
echo.
echo ════════════════════════════════════════════════════════════════
timeout /t 3 /nobreak >nul 2>&1
cls
goto parte6

:nochoice
chcp 65001 >nul
echo ════════════════════════════════════════════════════════════════!COLOR_WHITE!
echo.
echo !COLOR_RED!ERRO 002:!COLOR_WHITE!
echo É necessário fazer uma escolha...
echo.
echo ════════════════════════════════════════════════════════════════!COLOR_WHITE!
timeout /t 3 /nobreak >nul 2>&1
cls
goto pr2

:nochoice2
chcp 65001 >nul
echo ════════════════════════════════════════════════════════════════!COLOR_WHITE!
echo.
echo !COLOR_RED!ERRO 002:!COLOR_WHITE!
echo É necessário fazer uma escolha...
echo.
echo ════════════════════════════════════════════════════════════════!COLOR_WHITE!
timeout /t 3 /nobreak >nul 2>&1
cls
goto msginicial

:nochoice3
chcp 65001 >nul
cls
echo ════════════════════════════════════════════════════════════════!COLOR_WHITE!
echo.
echo !COLOR_RED!ERRO 002:!COLOR_WHITE!
echo É necessário fazer uma escolha...
echo.
echo ════════════════════════════════════════════════════════════════!COLOR_WHITE!
timeout /t 3 /nobreak >nul 2>&1
cls
goto parte6

:Colors
set "COLOR_GREEN=[32m"
set "COLOR_ORANGE=[33m"
set "COLOR_WHITE=[97m"
set "COLOR_RED=[31m"

goto :eof