@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

:: Mensagem inicial
echo ================================================================
echo.

echo Feito por Gustavin

echo.
echo ================================================================
echo.

echo Otimizações que serão feitas:
echo.

echo 1. Regedit (46 otimizações)
echo 2. Desativacao de servicos desnecessarios (84 serviços)
echo 3. Comandos no cmd (15 comandos)
echo 4. Limpeza de arquivos temporarios (Eliminação de arquivos .log no pc e das pastas: recent, prefetch, %%temp%%, temp)

echo.
echo ================================================================
echo.

color 0A
echo Pressione Enter para iniciar as otimizações.
color 07
pause >nul

:: Parte 1, Regedit

echo.
echo ================================================================
echo.

reg add "HKLM\SYSTEM\ControlSet001\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d 2000 /f
reg add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d 67108864 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeaturesSettingsOverrideMask" /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d 1 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d High /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d High /f
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_DWORD /d 1 /f
reg add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_DWORD /d 0 /f
reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "flags" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "flags" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "flags" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "flags" /t REG_SZ /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32Priority" /t REG_DWORD /d 26 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\ApplicationManagement" /v "AllowGameDVR" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "GPU_SCHEDULER_MODE" /t REG_SZ /d "47" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\Ndu" /v "Start" /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d 5 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "Enableboottrace" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Schedule" /v "Start" /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass" /v "MouseDataQueueSize" /t REG_DWORD /d 40 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d 40 /f

:: Mensagem após terminar a Parte 1

echo.
echo ================================================================
echo.

echo Otimizações na regedit foram concluídas.
color 0A 
set /p continuar="Deseja prosseguir para Desativação de serviços desnecessários? [S/N]"
color 07
if /i "%continuar%"=="S" goto parte2
if /i "%continuar%"=="N" exit

:parte2

:: Parte 2, Lista de serviços que vão ser desativados

echo.
echo ================================================================
echo.

call :stop_and_disable CscService
call :stop_and_disable NaturalAuthentication
call :stop_and_disable tzautoupdate
call :stop_and_disable StiSvc
call :stop_and_disable iphlpsvc
call :stop_and_disable lmhosts
call :stop_and_disable SCardSvr
call :stop_and_disable TrkWks
call :stop_and_disable WpcMonSvc
call :stop_and_disable MSDTC
call :stop_and_disable diagsvc
call :stop_and_disable LanmanWorkstation
call :stop_and_disable DispBrokerDesktopSvc
call :stop_and_disable DiagTrack
call :stop_and_disable PrintNotify
call :stop_and_disable Fax
call :stop_and_disable MsKeyboardFilter
call :stop_and_disable RasMan
call :stop_and_disable RasAuto
call :stop_and_disable MapsBroker
call :stop_and_disable SEMgrSvc
call :stop_and_disable SharedAccess
call :stop_and_disable NcdAutoSetup
call :stop_and_disable vmicguestinterface
call :stop_and_disable Netlogon
call :stop_and_disable seclogon
call :stop_and_disable pla
call :stop_and_disable lltdsvc
call :stop_and_disable McpManagementService
call :stop_and_disable AppVClient
call :stop_and_disable workfolderssvc
call :stop_and_disable SCPolicySvc
call :stop_and_disable CertPropSvc
call :stop_and_disable FDResPub
call :stop_and_disable RemoteRegistry
call :stop_and_disable RemoteAccess
call :stop_and_disable AssignedAccessManagerSvc
call :stop_and_disable BthAvctpSvc
call :stop_and_disable PcaSvc
call :stop_and_disable WbioSrvc
call :stop_and_disable DsSvc
call :stop_and_disable WMPNetworkSvc
call :stop_and_disable PrintDeviceConfigurationService
call :stop_and_disable BDESVC
call :stop_and_disable SensorDataService
call :stop_and_disable RetailDemo
call :stop_and_disable vmicshutdown
call :stop_and_disable ScDeviceEnum
call :stop_and_disable lfsvc
call :stop_and_disable icssvc
call :stop_and_disable SensrSvc
call :stop_and_disable CDPSvc
call :stop_and_disable DPS
call :stop_and_disable vmicheartbeat
call :stop_and_disable WerSvc
call :stop_and_disable dmwappushservice
call :stop_and_disable SensorService
call :stop_and_disable perceptionsimulation
call :stop_and_disable vmictimesync
call :stop_and_disable PhoneSvc
call :stop_and_disable vmickvpexchange
call :stop_and_disable UevAgentService
call :stop_and_disable vmicrdv
call :stop_and_disable vmicvmsession
call :stop_and_disable wisvc
call :stop_and_disable WpnService
call :stop_and_disable WPDBusEnum
call :stop_and_disable ALG
call :stop_and_disable TermService
call :stop_and_disable FrameServer
call :stop_and_disable shpamsvc
call :stop_and_disable vmicvss
call :stop_and_disable Spooler
call :stop_and_disable SysMain
call :stop_and_disable TapiSrv
call :stop_and_disable WalletService
call :stop_and_disable wuauserv
call :stop_and_disable WSearch
call :stop_and_disable diagnosticshub.standardcollector.service
call :stop_and_disable SharedRealitySvc
call :stop_and_disable TabletInputService
call :stop_and_disable WdiServiceHost
call :stop_and_disable WdiSystemHost
call :stop_and_disable NetTcpPortSharing
call :stop_and_disable ssh-agent
call :stop_and_disable SessionEnv

echo.
echo ================================================================
echo.

:: Mensagem após terminar a Parte 2

echo Desativação de serviços desnecessários concluída.
color 0A
set /p continuar="Deseja prosseguir para Comandos no CMD? [S/N]"
color 07

if /i "%continuar%"=="S" goto parte3
if /i "%continuar%"=="N" exit

:parte3

:: Comandos no CMD

echo.
echo ================================================================
echo.

Fsutil behavior set memoryusage 2
Fsutil behavior set disabledeletenotify 0
bcdedit /set useplatformtick yes 
bcdedit /set disabledynamictick yes
bcdedit /deletevalue useplatformclock false
bcdedit /set tscsyncpolicy Enhanced FPS
bcdedit /set tscsyncpolicy Legacy input
powercfg.exe /hibernate off
winget uninstall "windows web experience pack"
ipconfig /flushdns
netsh winsock reset

echo.
echo ================================================================
echo.

:: Mensagem após terminar a Parte 3

echo Comandos no CMD aplicados.
color 0A
set /p continuar="Deseja prosseguir para Limpeza de Arquivos Temporários? [S/N]"
color 07
if /i "%continuar%"=="S" goto parte4
if /i "%continuar%"=="N" exit

:parte4

:: Parte 4, Limpeza de arquivos temporários

:: Pausa serviços que podem estar bloqueando a exclusão de arquivos temporários

net stop wuauserv >nul 2>&1
net stop bits >nul 2>&1

echo Limpando arquivos temporários...

:: Limpa a pasta %temp%

rd /s /q "%temp%" >nul 2>&1
mkdir "%temp%" >nul 2>&1

:: Limpa a pasta temp do Windows

rd /s /q "C:\Windows\Temp" >nul 2>&1
mkdir "C:\Windows\Temp" >nul 2>&1

:: Limpa a pasta prefetch

rd /s /q "C:\Windows\Prefetch" >nul 2>&1
mkdir "C:\Windows\Prefetch" >nul 2>&1

:: Limpa a pasta recent

del /f /q "%userprofile%\Recent\*" >nul 2>&1

:: Apaga arquivos .log em todo o disco C:

for /r C:\ %%i in (*.log *.logs) do del /f /q "%%i" >nul 2>&1

:: Reinicia os serviços que foram pausados

net start bits >nul 2>&1

:: Mensagem após terminar a Parte 4

echo.
echo ================================================================
echo.

echo Todas as otimizações foram concluídas com sucesso.
pause
exit

rem Função para parar e desativar um serviço
:stop_and_disable
set service=%1


rem Verificar se o serviço existe
sc qc %service% >nul 2>&1
if %errorlevel% neq 0 (
    echo Serviço %service% não foi encontrado.
    goto :eof
)


rem Verificar se o serviço está ativo
sc qc %service% | findstr /i "start    demand" >nul
if %errorlevel% neq 0 (
    echo Serviço %service% já desativado.
    goto :eof
)


rem Tentar parar o serviço, suprimindo qualquer erro
sc stop %service% >nul 2>&1


rem Desativar o serviço
sc config %service% start= disabled >nul 2>&1


rem Verificar se o serviço foi desativado com sucesso
sc qc %service% | findstr /i "start    disabled" >nul
if %errorlevel% equ 0 (
    echo Serviço %service% desativado com sucesso.
)

goto :eof