::__          ___        ____        _   _           _              
::\ \        / (_)      / __ \      | | (_)         (_)             
:: \ \  /\  / / _ _ __ | |  | |_ __ | |_ _ _ __ ___  _ _______ _ __ 
::  \ \/  \/ / | | '_ \| |  | | '_ \| __| | '_ ` _ \| |_  / _ \ '__|
::   \  /\  /  | | | | | |__| | |_) | |_| | | | | | | |/ /  __/ |   
::    \/  \/   |_|_| |_|\____/| .__/ \__|_|_| |_| |_|_/___\___|_|   
::                           | |                                   
::                           |_|   

:: 

:: 264 REGEDITS
:: 91 Serviços
:: 19 cmds

@echo off
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b >nul 2>&1 
chcp 65001 >nul
setlocal enabledelayedexpansion
set PLANO_NOME=MaxPower
title WinOptimizer by Tavin17
call :Colors

:: Packages

set "cmd_1=Get-AppxPackage -AllUsers Microsoft.WindowsAlarms | Remove-AppxPackage"
set "cmd_2=Get-AppxPackage -AllUsers Microsoft.XboxApp | Remove-AppxPackage ^&" ^
    "Get-AppxPackage -AllUsers Microsoft.XboxGameOverlay | Remove-AppxPackage ^&" ^
    "Get-AppxPackage -AllUsers Microsoft.XboxGamingOverlay | Remove-AppxPackage ^&" ^
    "Get-AppxPackage -AllUsers Microsoft.XboxIdentityProvider | Remove-AppxPackage ^&" ^
    "Get-AppxPackage -AllUsers Microsoft.Xbox.TCUI | Remove-AppxPackage ^&" ^
    "Get-AppxPackage -AllUsers Microsoft.GamingApp | Remove-AppxPackage"
set "cmd_3=Get-AppxPackage -AllUsers MicrosoftCorporationII.QuickAssist | Remove-AppxPackage"
set "cmd_4=Get-AppxPackage -AllUsers microsoft.windowscommunicationsapps | Remove-AppxPackage"
set "cmd_5=Get-AppxPackage -AllUsers Microsoft.WindowsCalculator | Remove-AppxPackage"
set "cmd_6=Get-AppxPackage -AllUsers Microsoft.WindowsCamera | Remove-AppxPackage"
set "cmd_7=Get-AppxPackage -AllUsers Microsoft.ScreenSketch | Remove-AppxPackage"
set "cmd_8=Get-AppxPackage -AllUsers Microsoft.BingWeather | Remove-AppxPackage"
set "cmd_9=Get-AppxPackage -AllUsers Microsoft.549981C3F5F10 | Remove-AppxPackage"
set "cmd_10=Get-AppxPackage -AllUsers Microsoft.Windows.DevHome | Remove-AppxPackage"
set "cmd_11=Get-AppxPackage -AllUsers Microsoft.Getstarted | Remove-AppxPackage"
set "cmd_12=Get-AppxPackage -AllUsers Microsoft.ZuneVideo | Remove-AppxPackage"
set "cmd_13=Get-AppxPackage -AllUsers Microsoft.Windows.Photos | Remove-AppxPackage"
set "cmd_14=Get-AppxPackage -AllUsers Microsoft.WindowsSoundRecorder | Remove-AppxPackage"
set "cmd_15=Get-AppxPackage -AllUsers Microsoft.ZuneMusic | Remove-AppxPackage"
set "cmd_16=Get-AppxPackage -AllUsers Microsoft.WindowsFeedbackHub | Remove-AppxPackage"
set "cmd_17=Get-AppxPackage -AllUsers Microsoft.MicrosoftOfficeHub | Remove-AppxPackage"
set "cmd_18=Get-AppxPackage -AllUsers Microsoft.WindowsMaps | Remove-AppxPackage"
set "cmd_19=Get-AppxPackage -AllUsers Clipchamp.Clipchamp | Remove-AppxPackage"
set "cmd_20=Get-AppxPackage -AllUsers Microsoft.Windows.Ai.Copilot.Provider | Remove-AppxPackage ^&" ^
    "Get-AppxPackage -AllUsers Microsoft.Copilot | Remove-AppxPackage ^&" ^
    "Get-AppxPackage -AllUsers Microsoft.Copilot_8wekyb3d8bbwe | Remove-AppxPackage"
set "cmd_21=Get-AppxPackage -AllUsers MicrosoftCorporationII.MicrosoftFamily | Remove-AppxPackage"
set "cmd_22=Get-AppxPackage -AllUsers Microsoft.BingNews | Remove-AppxPackage"
set "cmd_23=Get-AppxPackage -AllUsers Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage"
set "cmd_24=Get-AppxPackage -AllUsers Microsoft Teams | Remove-AppxPackage"
set "cmd_25=Get-AppxPackage -AllUsers Microsoft.Todos | Remove-AppxPackage"
set "cmd_26=Get-AppxPackage -AllUsers Microsoft.GetHelp | Remove-AppxPackage"
set "cmd_27=Get-AppxPackage -AllUsers Microsoft.Office.OneNote | Remove-AppxPackage"
set "cmd_28=Get-AppxPackage -AllUsers Microsoft.OutlookForWindows | Remove-AppxPackage"
set "cmd_29=Get-AppxPackage -AllUsers Microsoft.Paint | Remove-AppxPackage"
set "cmd_30=Get-AppxPackage -AllUsers Microsoft.BingSearch | Remove-AppxPackage"
set "cmd_31=Get-AppxPackage -AllUsers Microsoft.People | Remove-AppxPackage"
set "cmd_32=Get-AppxPackage -AllUsers Microsoft.PowerAutomateDesktop | Remove-AppxPackage"
set "cmd_33=Get-AppxPackage -AllUsers Microsoft.WindowsMeetNow | Remove-AppxPackage"
set "cmd_34=Get-AppxPackage -AllUsers Microsoft.SkypeApp | Remove-AppxPackage"
set "cmd_35=Get-AppxPackage -AllUsers Microsoft.MicrosoftStickyNotes | Remove-AppxPackage"
set "cmd_36=Get-AppxPackage -AllUsers Microsoft.YourPhone | Remove-AppxPackage"
set "cmd_37=Get-AppxPackage -AllUsers Microsoft.Microsoft3DViewer | Remove-AppxPackage"
set "cmd_38=Get-AppxPackage -AllUsers Microsoft.MixedReality.Portal | Remove-AppxPackage"

:: Nomes

set "app_1=Alarmes e Relógio"
set "app_2=Aplicativos do Xbox"
set "app_3=Assistência Rápida"
set "app_4=Calendário"
set "app_5=Calculadora"
set "app_6=Câmera"
set "app_7=Ferramenta de Captura"
set "app_8=Clima"
set "app_9=Cortana"
set "app_10=Dev Home"
set "app_11=Dicas"
set "app_12=Filmes e TV"
set "app_13=Fotos"
set "app_14=Gravador de Som"
set "app_15=Groove Music"
set "app_16=Hub de Comentários"
set "app_17=Hub do Office"
set "app_18=Mapas"
set "app_19=Microsoft Clipchamp"
set "app_20=Microsoft Copilot"
set "app_21=Família Microsoft"
set "app_22=Notícias"
set "app_23=Microsoft Solitaire Collection"
set "app_24=Microsoft Teams"
set "app_25=Microsoft To Do"
set "app_26=Obter Ajuda"
set "app_27=OneNote"
set "app_28=Outlook"
set "app_29=Paint"
set "app_30=Pesquisa Bing"
set "app_31=Pessoas"
set "app_32=Power Automate"
set "app_33=Meet Now"
set "app_34=Skype"
set "app_35=Sticky Notes"
set "app_36=Seu Telefone"
set "app_37=Visualizador 3D"
set "app_38=Windows Mixed Reality"

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Arquivo não foi executado como administrador, reexecutando como adm...
    ::timeout /t 4 /nobreak >nul
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

:pr2
chcp 65001 >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 0 /f >nul 2>&1

echo.
echo.
echo.
echo.

echo.!COLOR_GREEN!                                                                           ██╗    ██╗██╗███╗   ██╗    ██████╗ ██████╗ ████████╗██╗███╗   ███╗██╗███████╗███████╗██████╗ 
echo.!COLOR_GREEN!                                                                           ██║    ██║██║████╗  ██║   ██╔═══██╗██╔══██╗╚══██╔══╝██║████╗ ████║██║╚══███╔╝██╔════╝██╔══██╗
echo.!COLOR_GREEN!                                                                           ██║ █╗ ██║██║██╔██╗ ██║   ██║   ██║██████╔╝   ██║   ██║██╔████╔██║██║  ███╔╝ █████╗  ██████╔╝
echo.!COLOR_GREEN!                                                                           ██║███╗██║██║██║╚██╗██║   ██║   ██║██╔═══╝    ██║   ██║██║╚██╔╝██║██║ ███╔╝  ██╔══╝  ██╔══██╗
echo.!COLOR_GREEN!                                                                           ╚███╔███╔╝██║██║ ╚████║   ╚██████╔╝██║        ██║   ██║██║ ╚═╝ ██║██║███████╗███████╗██║  ██║
echo.!COLOR_GREEN!                                                                            ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝    ╚═════╝ ╚═╝        ╚═╝   ╚═╝╚═╝     ╚═╝╚═╝╚══════╝╚══════╝╚═╝  ╚═╝
echo.                                                                                                                                                                         By Tavin17
echo !COLOR_RED!═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════!COLOR_WHITE!
echo.
echo                                                                                          [!COLOR_ORANGE!1!COLOR_WHITE!] Ir para otimizações          [!COLOR_ORANGE!2!COLOR_WHITE!] Criar ponto de restauração   
echo.
echo.
echo. 
                                             
set /p continuar=""

cls

if /i "%continuar%"=="1" goto msginicial
if /i "%continuar%"=="2" goto pr

if "%continuar%"=="" goto prmsg
goto prmsg

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


echo.!COLOR_GREEN!                                                                           ██╗    ██╗██╗███╗   ██╗    ██████╗ ██████╗ ████████╗██╗███╗   ███╗██╗███████╗███████╗██████╗ 
echo.!COLOR_GREEN!                                                                           ██║    ██║██║████╗  ██║   ██╔═══██╗██╔══██╗╚══██╔══╝██║████╗ ████║██║╚══███╔╝██╔════╝██╔══██╗
echo.!COLOR_GREEN!                                                                           ██║ █╗ ██║██║██╔██╗ ██║   ██║   ██║██████╔╝   ██║   ██║██╔████╔██║██║  ███╔╝ █████╗  ██████╔╝
echo.!COLOR_GREEN!                                                                           ██║███╗██║██║██║╚██╗██║   ██║   ██║██╔═══╝    ██║   ██║██║╚██╔╝██║██║ ███╔╝  ██╔══╝  ██╔══██╗
echo.!COLOR_GREEN!                                                                           ╚███╔███╔╝██║██║ ╚████║   ╚██████╔╝██║        ██║   ██║██║ ╚═╝ ██║██║███████╗███████╗██║  ██║
echo.!COLOR_GREEN!                                                                            ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝    ╚═════╝ ╚═╝        ╚═╝   ╚═╝╚═╝     ╚═╝╚═╝╚══════╝╚══════╝╚═╝  ╚═╝

echo.                                                                                                                                                                         By Tavin17
echo !COLOR_RED!═════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════!COLOR_WHITE!


echo.
echo.

echo                                                                                !COLOR_GREEN![1]!COLOR_WHITE! Otimizar regedit                            !COLOR_GREEN![4]!COLOR_WHITE! Limpar arquivos temporários e cache
echo.
echo                                                                                !COLOR_GREEN![2]!COLOR_WHITE! Desativar serviços desnecessários           !COLOR_GREEN![5]!COLOR_WHITE! Desinstalar aplicativos desnecessários
echo.
echo                                                                                !COLOR_GREEN![3]!COLOR_WHITE! Aplicar comandos CMD                        !COLOR_GREEN![6]!COLOR_WHITE! Desativar tarefas agendadas desnecessárias
echo.
echo                                                                                !COLOR_GREEN![G]!COLOR_WHITE! Repositório do código                       !COLOR_GREEN![L]!COLOR_WHITE! Sair
echo.
echo.
echo.

echo                                                                                                         !COLOR_RED![R]!COLOR_WHITE! Usar ponto de restauração           

echo.                                                                                            

set /p continuar=""

if /i "%continuar%"=="" goto nochoice

cls

if /i "%continuar%"=="1" goto parte1
if /i "%continuar%"=="2" goto parte2
if /i "%continuar%"=="3" goto parte3
if /i "%continuar%"=="4" goto parte4
if /i "%continuar%"=="5" goto parte5
if /i "%continuar%"=="6" goto parte6

if /i "%continuar%"=="R" rstrui.exe && goto msginicial
if /i "%continuar%"=="G" start https://github.com/Tavin17/WinOptimizer && goto msginicial
if /i "%continuar%"=="L" exit

goto nochoice

:parte1

echo ════════════════════════════════════════════════════════════════

echo.

reg add "HKLM\SYSTEM\ControlSet001\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d 2000 /f >nul 2>&1
reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 67108864 /f >nul 2>&1 
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKLM\SYSTEM\ControlSet001\Control.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d 1 /f >nul 2>&1 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f >nul 2>&1 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeaturesSettingsOverrideMask" /t REG_DWORD /d 3 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!6!COLOR_GREEN! Alterações feitas em HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching.

reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling.

reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SYSTEM\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d 2 /f >nul 2>&1
echo !COLOR_ORANGE!7!COLOR_GREEN! Alterações feitas em HKCU\SYSTEM\GameConfigStore.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR.

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile.

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d High /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d High /f >nul 2>&1
echo !COLOR_ORANGE!4!COLOR_GREEN! Alterações feitas em HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games.

::reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 2 /f >nul 2>&1
::echo 1 Alteração feita em HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects.

reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_DWORD /d 0 /f >nul 2>&1
::reg add "HKCU\Control Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d 2 /f >nul 2>&1
echo !COLOR_ORANGE!3!COLOR_GREEN! Alterações feitas em HKCU\Control Panel\Desktop.

reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "flags" /t REG_SZ /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita HKCU\Control Panel\Accessibility\MouseKeys.

reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "flags" /t REG_SZ /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita HKCU\Control Panel\Accessibility\StickyKeys.

reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "flags" /t REG_SZ /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita HKCU\Control Panel\Accessibility\Keyboard Response.

reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "flags" /t REG_SZ /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita HKCU\Control Panel\Accessibility\ToggleKeys.

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d 2 /f >nul 2>&1
echo !COLOR_ORANGE!3!COLOR_GREEN! Alterações feitas em HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl.

reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\ApplicationManagement" /v "AllowGameDVR" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\ApplicationManagement.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "GPU_SCHEDULER_MODE" /t REG_SZ /d 47 /f>nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment.

reg add "HKLM\SYSTEM\ControlSet001\Services\Ndu" /v "Start" /t REG_DWORD /d 4 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\ControlSet001\Services\Ndu.
echo.


reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d 5 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\Dwm.

:: reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f >nul 2>&1 removido por causar problemas em alguns computadores e jogos
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!3!COLOR_GREEN! Alterações feita em HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers.


reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "Enableboottrace" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!3!COLOR_GREEN! Alterações feitas em HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters.

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Schedule" /v "Start" /t REG_DWORD /d 2 /f >nul 2>&1 rem 50 
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Services\Schedule.

reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass" /v "MouseDataQueueSize" /t REG_DWORD /d 40 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Services\mouclass.

reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d 40 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity.

reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat.

reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /d 0 /t REG_DWORD /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "LimitEnhancedDiagnosticDataWindowsAnalytics" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowCommercialDataPipeline" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "MicrosoftEdgeDataOptIn" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "MaxTelemetryAllowed" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!7!COLOR_GREEN! Alterações feitas em HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v "NoGenTicket" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting.

reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!3!COLOR_GREEN! Alterações feitas em HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting.

reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultOverrideBehavior" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSync" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v "DisableSettingSyncUserOverride" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices" /v "TCGSecurityActivationDisabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\EnhancedStorageDevices.
echo.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\safer\codeidentifiers" /v "authenticodeenabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\safer\codeidentifiers.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "EnableDynamicContentInWSB" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search.

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
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d 0 /f >nul 2>&1 rem 100
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353698Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!19!COLOR_GREEN! Alterações feitas em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t REG_DWORD /d 2 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "LinkResolveIgnoreLinkInfo" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoLowDiskSpaceChecks" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveSearch" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoResolveTrack" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!6!COLOR_GREEN! Alterações feitas em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability.

:: Configurações do Windows

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWAREMicrosoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\activity.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\radios.

reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "Value" /t REG_DWORD /d 0/f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search.
echo.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\downloadsFolder" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\downloadsFolder.

reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\musicLibrary" /v "Value"/t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\musicLibrary.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureProgrammatic" /v "Value" /t REG_SZ /d Allow /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureProgrammatic.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureWithoutBorder" /v "Value" /t REG_SZ /d Allow /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\graphicsCaptureWithoutBorder.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall" /v "Value" /t REG_SZ /d Deny /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCall.

reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps" /v "AgentActivationEnabled" /t REG_DWORD /d 0 /f  >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps" /v "AgentActivationLastUsed" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKCU\SOFTWARE\Microsoft\Speech_OneCore\Settings\VoiceActivation\UserPreferenceForAllApps.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_TOASTS_ABOVE_LOCK" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_NOTIFICATION_SOUND" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!3!COLOR_GREEN! Alterações feitas em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" /v "ScoobeSystemSettingEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance.

reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!3!COLOR_GREEN! Alterações feitas em HKCU\SOFTWARE\Microsoft\GameBar.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DownloadMode" /d 0 /t REG_DWORD /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableCdp" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /V "EnableSmartScreen" /t REG_DWORD /D 0 /f >nul 2>&1
echo !COLOR_ORANGE!5!COLOR_GREEN! Alterações feitas em HKLM\SOFTWARE\Policies\Microsoft\Windows\System.

reg add "HKLM\Software\Microsoft\SQMClient\Windows" /v "CEIPEnable" /d 0 /t REG_DWORD /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\SQMClient\Windows.
echo.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "SmartScreenEnabled" /t REG_SZ /d Off /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v "SmartScreenEnabled" /t REG_SZ /d Off /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowFullControl" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowToGetHelp" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /d 0 /t REG_DWORD /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard.

reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\EdgeUI" /v "DisableMFUTracking"/t REG_DWORD /d 1 /f >nul 2>&1 rem 150
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\EdgeUI" /v "DisableMFUTracking" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKLM\SOFTWARE\Policies\Microsoft\Windows\EdgeUI.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CPSS\Store\InkingAndTypingPersonalization" /v "Value" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CPSS\Store\InkingAndTypingPersonalization.

reg add "HKCU\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Personalization\Settings.

reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\InputPersonalization.

reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDeviceSearchHistoryEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /d 1 /t REG_DWORD /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent.

reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableTailoredExperiencesWithDiagnosticData" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Policies\Microsoft\Windows\CloudContent.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartActionPlatform\SmartClipboard" /v Disabled /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SmartActionPlatform\SmartClipboard.

reg delete "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Stickers" /v "EnableStickers" /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Stickers.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{2cc5ca98-6485-489a-920e-b3e88a6ccce3}" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput" /v "AllowLinguisticDataCollection" /t REG_DWORD /D 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\TextInput.

reg add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization.
echo.

reg add "HKCU\SOFTWARE\Microsoft\Input\Settings" /v "InsightsEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Input\Settings.

reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v "DisableAIDataAnalysis" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Policies\Microsoft\Windows\WindowsAI.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v "DisableAIDataAnalysis" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI. 

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarMn" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCopilotButton" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarDa" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!6!COLOR_GREEN! Alterações feitas em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v "AllowNewsAndInterests" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Dsh.

reg add "HKCU\SOFTWARE\Microsoft\Multimedia\Audio" /v "UserDuckingPreference" /t REG_DWORD /d 3 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Multimedia\Audio.

reg add "HKLM\SOFTWARE\Policies\Microsoft\EdgeUpdate" /v "CreateDesktopShortcutDefault" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\EdgeUpdate. 

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
echo !COLOR_ORANGE!15!COLOR_GREEN! Alterações feitas em HKLM\SOFTWARE\Policies\Microsoft\Edge.

reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Siuf\Rules.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "EnthusiastMode" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot" /v "TurnOffWindowsCopilot" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot.

reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot" /v "TurnOffWindowsCopilot" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" /v "DisableAIDataAnalysis" /t REG_DWORD /d 1 /f >nul 2>&1 rem 200
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsAI. 

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Installer" /v "DisableCoInstallers" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Installer.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v "DisableEnhancedNotifications" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d 2 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d 2 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds.
echo.

reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d 30 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /v "PeopleBand" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" /v "PeopleBand" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy" /v 01 /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\StorageSense\Parameters\StoragePolicy.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HibernateEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d 0 /f /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowHibernateOption" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoLockScreenCamera" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization.

reg add "HKLM\SOFTWARE\Policies\Assist" /v "NoImplicitFeedback" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Assist.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\FlightSettings" /v "UserPreferredRedirectStage" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\FlightSettings.

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d 64 /f >nul 2>&1
echo !COLOR_ORANGE!3!COLOR_GREEN! Alterações feitas em HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters.

reg add "HKCU\SOFTWARE\Microsoft\Office\15.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alterações feita em HKCU\SOFTWARE\Microsoft\Office\15.0\Outlook\Options\Mail.

reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alterações feita em HKCU\SOFTWARE\Microsoft\Office\16.0\Outlook\Options\Mail.

reg add "HKCU\SOFTWARE\Microsoft\Office\15.0\Outlook\Options\Calendar" /v "EnableCalendarLogging" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alterações feita em HKCU\SOFTWARE\Microsoft\Office\15.0\Outlook\Options\Calendar.

reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Outlook\Options\Calendar" /v "EnableCalendarLogging" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alterações feita em HKCU\SOFTWARE\Microsoft\Office\16.0\Outlook\Options\Calendar.

reg add "HKCU\SOFTWARE\Microsoft\Office\15.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alterações feita em HKCU\SOFTWARE\Microsoft\Office\15.0\Word\Options.

reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alterações feita em HKCU\SOFTWARE\Microsoft\Office\16.0\Word\Options.

reg add "HKCU\SOFTWARE\Policies\Microsoft\Office\15.0\OSM" /v "EnableUpload" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Policies\Microsoft\Office\15.0\OSM" /v "EnableLogging" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKCU\SOFTWARE\Policies\Microsoft\Office\15.0\OSM.

reg add "HKCU\SOFTWARE\Policies\Microsoft\Office\16.0\OSM" /v "EnableLogging" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Policies\Microsoft\Office\16.0\OSM" /v "EnableUpload" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKCU\SOFTWARE\Policies\Microsoft\Office\16.0\OSM.

reg add "HKCU\SOFTWARE\Microsoft\Office\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Office\Common\ClientTelemetry" /v "VerboseLogging" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKCU\SOFTWARE\Microsoft\Office\Common\ClientTelemetry.

reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Common\ClientTelemetry" /v "VerboseLogging" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKCU\SOFTWARE\Microsoft\Office\16.0\Common\ClientTelemetry.
echo.

reg add "HKCU\SOFTWARE\Microsoft\Office\15.0\Common" /v "QMEnable" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alterações feita em HKCU\SOFTWARE\Microsoft\Office\15.0\Common.

reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Common" /v "QMEnable" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alterações feita em HKCU\SOFTWARE\Microsoft\Office\16.0\Common.

reg add "HKCU\SOFTWARE\Microsoft\Office\15.0\Common\Feedback" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alterações feita em HKCU\SOFTWARE\Microsoft\Office\15.0\Common\Feedback.

reg add "HKCU\SOFTWARE\Microsoft\Office\16.0\Common\Feedback" /v "Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alterações feita em HKCU\SOFTWARE\Microsoft\Office\16.0\Common\Feedback.

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t REG_DWORD /d 32 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alterações feita em HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alterações feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HeterogeneousPolicy" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power.

reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HidePeopleBar" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HidePeopleBar" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Chat" /v "ChatIcon" /t REG_DWORD /d 3 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Chat.

reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Chat" /v "ChatIcon" /t REG_DWORD /d 3 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\Windows Chat.

reg add "HKCU\SOFTWARE\Microsoft\Clipboard" /v "EnableClipboardHistory" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKCU\SOFTWARE\Microsoft\Clipboard.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "SafeSearchMode" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsMSACloudSearchEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsDeviceSearchHistoryEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings" /v "IsAADCloudSearchEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!4!COLOR_GREEN! Alterações feitas em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SearchSettings.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "LockScreenToastEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!2!COLOR_GREEN! Alterações feitas em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications.

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7" /v "Attributes" /t REG_DWORD /d 2 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\be337238-0d82-4146-a960-4f3749d470c7.

reg add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "TrackNblOwner" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d 0 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 /f >nul 2>&1
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d 1 /f >nul 2>&1 
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate.

reg add "HKLM\SYSTEM\Maps" /v "AutoUpdateEnabled" /t REG_DWORD /d 0 /f >nul 2>&1 
echo !COLOR_ORANGE!1!COLOR_GREEN! Alteração feita em HKLM\SYSTEM\Maps

echo.

echo.╔════════════════════════════════════════════════════╗
echo ║          !COLOR_GREEN!Otimizações na regedit concluidas.!COLOR_WHITE!        ║
echo.╚════════════════════════════════════════════════════╝

echo.
echo ════════════════════════════════════════════════════════════════
echo.

echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
pause >nul 2>&1
goto msginicial


:parte2

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

echo.

echo.╔═══════════════════════════════════════════════════════════════════╗
echo ║         !COLOR_GREEN!Desativação de serviços desnecessários concluída.!COLOR_WHITE!         ║
echo.╚═══════════════════════════════════════════════════════════════════╝

echo.
echo ════════════════════════════════════════════════════════════════
echo.

echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
pause >nul 2>&1
goto msginicial

:parte3

echo ════════════════════════════════════════════════════════════════
echo.

Fsutil behavior set memoryusage 2 >nul 2>&1
Fsutil behavior set disabledeletenotify 0 >nul 2>&1
Fsutil behavior set disableLastAccess 1 >nul 2>&1
fsutil.exe 8dot3name set 1 >nul 2>&1
echo !COLOR_GREEN!Comandos Fsutil aplicados.!COLOR_WHITE!

bcdedit /set useplatformtick yes >nul 2>&1
bcdedit /set disabledynamictick yes >nul 2>&1
bcdedit /deletevalue useplatformclock false >nul 2>&1
bcdedit /set tscsyncpolicy Enhanced FPS >nul 2>&1
bcdedit /set tscsyncpolicy Legacy input >nul 2>&1
bcdedit /set hypervisorlaunchtype off >nul 2>&1
echo !COLOR_GREEN!Comandos bcdedit aplicados.!COLOR_WHITE!

powercfg.exe /hibernate off >nul 2>&1
echo !COLOR_GREEN!Hibernação desativada.!COLOR_WHITE!

taskkill /f /fi "status eq not responding" >nul 2>&1
echo !COLOR_GREEN!Processos que não está respondendo encerrados.!COLOR_WHITE!

:: ----------------------------------------------------------------------------------------------

powercfg /list | findstr /i "%PLANO_NOME%" > nul

if %errorlevel% equ 0 (
    goto pw1
) 

echo !COLOR_ORANGE!Deseja aplicar o plano de energia MaxPower? !COLOR_WHITE![!COLOR_ORANGE!S/N!COLOR_WHITE!]

set /p continuar=""

if /i "%continuar%"=="S" goto plano
if /i "%continuar%"=="N" goto pw1

:plano
chcp 437 >nul
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Tavin17/WinOptimizer/main/MaxPower.pow' -OutFile '%USERPROFILE%\Downloads\MaxPower.pow'" >nul 2>&1

powercfg /import "%USERPROFILE%\Downloads\MaxPower.pow" 9de523a7-05eb-4ec6-a4ed-688d113e2116 >nul 2>&1

powercfg /setactive 9de523a7-05eb-4ec6-a4ed-688d113e2116 >nul 2>&1
del "%USERPROFILE%\Downloads\MaxPower.pow" >nul 2>&1
chcp 65001 >nul
echo !COLOR_GREEN!Plano de energia !COLOR_ORANGE!MaxPower!COLOR_GREEN! ativado com sucesso.!COLOR_WHITE!

:pw1

winget uninstall "windows web experience pack" >nul 2>&1
echo !COLOR_GREEN!Widgets removidos.!COLOR_WHITE!

DISM /Online /Disable-Feature /FeatureName:"Recall" /Remove >nul 2>&1
echo !COLOR_GREEN!Recall desabilitado.!COLOR_WHITE!

dism /online /remove-package /package-name:Microsoft.Windows.Copilot >nul 2>&1
echo !COLOR_GREEN!Copilot desabilitado.!COLOR_WHITE!

defrag /C /L >nul 2>&1
echo !COLOR_GREEN!Unidades otimizadas.!COLOR_WHITE!

echo !COLOR_ORANGE!Conclua a limpeza do seu disco.!COLOR_WHITE!
net session >nul 2>&1

cleanmgr
echo !COLOR_GREEN!Limpeza de disco concluída.!COLOR_WHITE!

echo.

echo.╔══════════════════════════════════════════════════════════════╗
echo ║         !COLOR_GREEN!Comandos aplicados e executados com sucesso.!COLOR_WHITE!         ║
echo.╚══════════════════════════════════════════════════════════════╝

echo.
echo ════════════════════════════════════════════════════════════════
echo.

echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
pause >nul 2>&1
goto msginicial


:parte4

net stop wuauserv >nul 2>&1
net stop bits >nul 2>&1

echo ════════════════════════════════════════════════════════════════
echo.


rd /s /q "%temp%" >nul 2>&1
mkdir "%temp%" >nul 2>&1
echo !COLOR_GREEN!Pasta %%temp%% limpa.!COLOR_WHITE!

rd /s /q "C:\Windows\Temp" >nul 2>&1
mkdir "C:\Windows\Temp" >nul 2>&1
echo !COLOR_GREEN!Pasta temp limpa.!COLOR_WHITE!

rd /s /q "C:\Windows\Prefetch" >nul 2>&1
mkdir "C:\Windows\Prefetch" >nul 2>&1
echo !COLOR_GREEN!Pasta prefetch limpa.!COLOR_WHITE!

del /f /q "%userprofile%\Recent\*" >nul 2>&1
echo !COLOR_GREEN!Pasta recent limpa.!COLOR_WHITE!

del C:\Windows\Logs\* /s /q >nul 2>&1
del C:\Windows\Panther\*.log /s /q >nul 2>&1
del C:\Windows\inf\*.log /s /q >nul 2>&1
del C:\Windows\SoftwareDistribution\*.log /s /q >nul 2>&1
del C:\Windows\Microsoft.NET\*.log /s /q >nul 2>&1
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q >nul 2>&1
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q >nul 2>&1
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q >nul 2>&1
ipconfig /flushdns >nul 2>&1
netsh winsock reset >nul 2>&1
echo !COLOR_GREEN!Cache limpo.!COLOR_WHITE!

rd /s /q C:\$Recycle.Bin >nul 2>&1
echo !COLOR_GREEN!Lixeira esvaziada.!COLOR_WHITE!

echo. 

echo !COLOR_ORANGE!Reiniciando BITS...!COLOR_WHITE!
net start bits >nul 2>&1
echo !COLOR_GREEN!BITS Reiniciado.!COLOR_WHITE!

echo.

echo.╔═════════════════════════════════════════════════════════════════════╗
echo ║         !COLOR_GREEN!Limpeza de arquivos temporários e cache concluidas.!COLOR_WHITE!         ║
echo.╚═════════════════════════════════════════════════════════════════════╝

echo.
echo ════════════════════════════════════════════════════════════════
echo.

echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
pause >nul 2>&1
goto msginicial

:parte5
echo ════════════════════════════════════════════════════════════════
echo.

echo Digite o número do respectivo aplicativo que deseja remover.
echo.

echo [!COLOR_ORANGE!1!COLOR_WHITE!] Alarmes e Relógio
echo [!COLOR_ORANGE!2!COLOR_WHITE!] Aplicativos Xbox (inclui, XboxGameBar e serviços de jogos)
echo [!COLOR_ORANGE!3!COLOR_WHITE!] Assistência Rápida
echo [!COLOR_ORANGE!4!COLOR_WHITE!] Calendário
echo [!COLOR_ORANGE!5!COLOR_WHITE!] Calculadora
echo [!COLOR_ORANGE!6!COLOR_WHITE!] Câmera
echo [!COLOR_ORANGE!7!COLOR_WHITE!] Ferramenta de Captura
echo [!COLOR_ORANGE!8!COLOR_WHITE!] Clima
echo [!COLOR_ORANGE!9!COLOR_WHITE!] Cortana
echo [!COLOR_ORANGE!10!COLOR_WHITE!] Dev Home
echo [!COLOR_ORANGE!11!COLOR_WHITE!] Dicas
echo [!COLOR_ORANGE!12!COLOR_WHITE!] Filmes e TV
echo [!COLOR_ORANGE!13!COLOR_WHITE!] Fotos
echo [!COLOR_ORANGE!14!COLOR_WHITE!] Gravador de Som
echo [!COLOR_ORANGE!15!COLOR_WHITE!] Groove Music
echo [!COLOR_ORANGE!16!COLOR_WHITE!] Hub de Comentários
echo [!COLOR_ORANGE!17!COLOR_WHITE!] Hub do Office
echo [!COLOR_ORANGE!18!COLOR_WHITE!] Mapas
echo [!COLOR_ORANGE!19!COLOR_WHITE!] Microsoft Clipchamp
echo [!COLOR_ORANGE!20!COLOR_WHITE!] Microsoft Copilot
echo [!COLOR_ORANGE!21!COLOR_WHITE!] Microsoft Family
echo [!COLOR_ORANGE!22!COLOR_WHITE!] Microsoft Notícias
echo [!COLOR_ORANGE!23!COLOR_WHITE!] Microsoft Solitaire Collection
echo [!COLOR_ORANGE!24!COLOR_WHITE!] Microsoft Teams
echo [!COLOR_ORANGE!25!COLOR_WHITE!] Microsoft To Do
echo [!COLOR_ORANGE!26!COLOR_WHITE!] Obter Ajuda
echo [!COLOR_ORANGE!27!COLOR_WHITE!] OneNote
echo [!COLOR_ORANGE!28!COLOR_WHITE!] Outlook
echo [!COLOR_ORANGE!29!COLOR_WHITE!] Paint
echo [!COLOR_ORANGE!30!COLOR_WHITE!] Pesquisa do Bing
echo [!COLOR_ORANGE!31!COLOR_WHITE!] Pessoas
echo [!COLOR_ORANGE!32!COLOR_WHITE!] Powershell Automate
echo [!COLOR_ORANGE!33!COLOR_WHITE!] Reunir agora
echo [!COLOR_ORANGE!34!COLOR_WHITE!] Skype
echo [!COLOR_ORANGE!35!COLOR_WHITE!] Stick Notes
echo [!COLOR_ORANGE!36!COLOR_WHITE!] Vincular ao Celular
echo [!COLOR_ORANGE!37!COLOR_WHITE!] Visualizador 3D
echo [!COLOR_ORANGE!38!COLOR_WHITE!] Windows Mixed Reality

echo.

echo [!COLOR_RED!M!COLOR_WHITE!] Menu Inicial
echo.

set /p continuar="" || set continuar= 

cls

if /i "%continuar%"=="M" goto msginicial

chcp 65001 >nul

if defined cmd_%continuar% (
    chcp 437 >nul
    PowerShell -command "!cmd_%continuar%!" >nul 2>&1
    chcp 65001 >nul
    echo ════════════════════════════════════════════════════════════════
    echo.
    echo !COLOR_GREEN!!app_%continuar%! foi removido com sucesso!COLOR_WHITE!
    echo.
    goto parte5
) else ( rem Se nenhum valor for digitado ou o valor for inválido, ir para nochoice
    goto nochoice
)

echo.

echo Pressione !COLOR_GREEN!M!COLOR_WHITE! para continuar
pause >nul 2>&1
goto msginicial

echo.
echo ════════════════════════════════════════════════════════════════
echo.

:parte6
echo ════════════════════════════════════════════════════════════════
echo.

echo Desativando tarefas agendadas desnecessárias, por favor aguarde...

schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent" >nul 2>&1 
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\FileHistory\File History (maintenance mode)" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /disable >nul 2>&1
schtasks end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\HelloFace\FODCleanupTask" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\HelloFace\FODCleanupTask" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Feedback\Siuf\DmClient" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Feedback\Siuf\DmClient" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Application Experience\PcaPatchDbTask" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Application Experience\PcaPatchDbTask" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Device Information\Device" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Device Information\Device" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Device Information\Device User" >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Device Information\Device User" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" >nul 2>&1
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" >nul 2>&1
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack" >nul 2>&1
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" >nul 2>&1
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" /disable >nul 2>&1
schtasks /end /tn "\Microsoft\Windows\Defrag\ScheduledDefrag" /disable >nul 2>&1
schtasks /change /tn "\Microsoft\Windows\Defrag\ScheduledDefrag" /disable >nul 2>&1
schtasks /end /tn "Microsoft\Windows\Maps\MapsUpdateTask" /disable >nul 2>&1
schtasks /change /tn "Microsoft\Windows\Maps\MapsUpdateTask" /disable >nul 2>&1

echo.

echo.╔══════════════════════════════════════════════════════════════════════╗
echo ║       !COLOR_GREEN!Tarefas agendadas desnecessárias desativadas com sucesso.!COLOR_WHITE!      ║
echo.╚══════════════════════════════════════════════════════════════════════╝

echo.
echo ════════════════════════════════════════════════════════════════
echo.

echo Pressione !COLOR_GREEN!qualquer tecla!COLOR_WHITE! para continuar
pause >nul 2>&1
goto msginicial


pause
exit

:stop_and_disable
set service=%1

sc qc %service% >nul 2>&1
if %errorlevel% neq 0 (
    ::echo O Serviço %service% não foi encontrado.
    echo !COLOR_RED!Não foi encontrado.!COLOR_WHITE!
    goto :eof
)

sc qc %service% | findstr /i "start    demand" >nul
if %errorlevel% neq 0 (
    ::echo O Serviço %service% já está desativado.
    echo !COLOR_ORANGE!Já está desativado.!COLOR_WHITE!
    goto :eof
)

sc stop %service% >nul 2>&1

sc config %service% start= disabled >nul 2>&1

sc qc %service% | findstr /i "start    disabled" >nul
if %errorlevel% equ 0 (
    ::echo O Serviço %service% foi desativado com sucesso.
    echo !COLOR_GREEN!Foi desativado com sucesso.!COLOR_WHITE!
    goto :eof
)

:nochoice
chcp 65001 >nul
echo ════════════════════════════════════════════════════════════════!COLOR_WHITE!
echo.
echo !COLOR_RED!ERRO 001:!COLOR_WHITE!
echo Valor inválido...
echo.
echo ════════════════════════════════════════════════════════════════
timeout 2 >nul 2>&1
cls
goto msginicial

:prmsg
chcp 65001 >nul
echo ════════════════════════════════════════════════════════════════!COLOR_WHITE!
echo.
echo !COLOR_RED!ERRO 001:!COLOR_WHITE!
echo Valor inválido...
echo.
echo ════════════════════════════════════════════════════════════════!COLOR_WHITE!
timeout 2 >nul 2>&1
cls
goto pr2

:Colors
set "COLOR_GREEN=[32m"
set "COLOR_ORANGE=[33m"
set "COLOR_WHITE=[97m"
set "COLOR_RED=[31m"

goto :eof