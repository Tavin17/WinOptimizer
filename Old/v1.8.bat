@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

color F

echo ================================================================
echo.

echo Feito por Gustavin (v1.8)

echo.
echo ================================================================
echo.

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Arquivo não foi executado como administrador, reexecutando como adm em 4 segundos...
    timeout /t 4 /nobreak >nul
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

echo Onde as otimizações serão feitas:
echo.

echo 1. Regedit. (64 Arquivos serão alterados/criados)
echo 2. Serviços. (Desativação de 75 serviços)
echo 3. CMD. (Aplicação de 13 comandos)
echo 4. Limpeza de arquivos temporários.
echo.

echo OBS: O Intuito dessas otimizações é maximizar a perfomance do seu computador para jogos sem precisar instalar nada, desativando muitas coisas que consomem memória e cpu no segundo plano do seu computador, além de limpar arquivos desnecessários (lixo). 
echo Assim melhorando o inputlag e deixando o sistema operacional e os jogos mais estáveis. Não sou responsável por possíveis danos. Use por sua conta e risco.

echo.

echo Algumas partes do Windows que podem não funcionar corretamente após as otimizações:
echo Windows Update, Windows Copilot, Cortana, XboxGameBar, Impressoras e Scanners, Máquinas Virtuais.

echo.
echo ================================================================
echo.

echo Pressione Enter para iniciar as otimizações.
pause >nul

:: Parte 1, Regedit

echo.
echo ================================================================
echo.

color 06

reg add "HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v AllowAutoGameMode /t REG_DWORD /d 1 /f >null 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v AutoGameModeEnabled /t REG_DWORD /d 1 /f >null 2>&1
echo 2 Alterações feitas em HKEY_CURRENT_USER\Software\Microsoft\GameBar.

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

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d 1 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling.

reg add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d 2 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f >nul 2>&1
echo 5 Alterações feitas em HKCU\System\GameConfigStore.

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

reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKCU\Control Panel\Desktop" /v "ForegroundLockTimeout" /t REG_DWORD /d 0 /f >nul 2>&1
echo 3 Alterações feitas em HKCU\Control Panel\Desktop.

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

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "GPU_SCHEDULER_MODE" /t REG_SZ /d "47" /f>nul 2>&1
echo 1 Alteração feita em HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment.

reg add "HKLM\SYSTEM\ControlSet001\Services\Ndu" /v "Start" /t REG_DWORD /d 4 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SYSTEM\ControlSet001\Services\Ndu.

reg add "HKLM\SOFTWARE\Microsoft\Windows\Dwm" /v "OverlayTestMode" /t REG_DWORD /d 5 /f >nul 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\Dwm.

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

reg add "HKLM\Software\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f >null 2>&1
echo 1 Alteração feita em HKLM\Software\Policies\Microsoft\SQMClient\Windows.

reg add "HKLM\Software\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f >null 2>&1
echo 1 Alteração feita HKLM\Software\Policies\Microsoft\Windows\AppCompat.

reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /d 0 /t REG_DWORD /f >null 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection.

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f >null 2>&1
echo 1 Alteração feita em HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection.

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f >null 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "LimitEnhancedDiagnosticDataWindowsAnalytics" /t REG_DWORD /d 0 /f >null 2>&1
echo 2 Alterações feitas em HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection.

reg add "HKLM\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v "NoGenTicket" /t REG_DWORD /d "1" /f >null 2>&1
echo 1 Alteração feita em HKLM\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform.

reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f >null 2>&1
echo 1 Alteração feita em HKLM\Software\Policies\Microsoft\Windows\Windows Error Reporting.

reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f >null 2>&1
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f >null 2>&1
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d "1" /f >null 2>&1
echo 4 Alterações feita em HKLM\Software\Microsoft\Windows\Windows Error Reporting.

reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultConsent" /t REG_DWORD /d "0" /f >null 2>&1
reg add "HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent" /v "DefaultOverrideBehavior" /t REG_DWORD /d "1" /f >null 2>&1
echo 2 Alterações feita em HKLM\Software\Microsoft\Windows\Windows Error Reporting\Consent.

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d 0 /f >null 2>&1
echo 1 Alteração feita em HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search.

echo.

echo Para abrir a regedit presione Win + R e digite regedit.

:: Mensagem após terminar a Parte 1

echo.
echo ================================================================
echo.

echo Otimizações na regedit foram concluídas.

color 0A
set /p continuar="Deseja prosseguir para Desativação de serviços desnecessários? [S/N]"
color 06

if /i "%continuar%"=="S" goto parte2
if /i "%continuar%"=="N" exit 

:parte2

:: Parte 2, Lista de serviços que vão ser desativados

echo.
echo ================================================================
echo.

call :stop_and_disable CscService
echo (Arquivos Offline)
echo.

call :stop_and_disable StiSvc
echo (Assistente de aquisição de imagens do Windows (WIA))
echo.

call :stop_and_disable tzautoupdate
echo (Atualizador de Fuso Horário Automático)
echo.

call :stop_and_disable NaturalAuthentication
echo (Autenticação Natural)
echo.

call :stop_and_disable iphlpsvc
echo (Auxiliar de IP)
echo.

call :stop_and_disable lmhosts
echo (Auxiliar NetBIOS TCP/IP)
echo.

call :stop_and_disable SCardSvr
echo (Cartão inteligente)
echo.

call :stop_and_disable TrkWks
echo (Cliente de rastreamento de link distribuído)
echo.

call :stop_and_disable SessionEnv
echo (Configuração da Área de Trabalho Remota)
echo.

call :stop_and_disable WpcMonSvc
echo (Controles dos Pais)
echo.

call :stop_and_disable MSDTC
echo (Coordenador de transações distribuídas)
echo.

call :stop_and_disable diagsvc
echo (Diagnostic Execution Service)
echo.

call :stop_and_disable LanmanWorkstation
echo (Estação de Trabalho)
echo.

call :stop_and_disable WiaRpc
echo (Evento de Aquisição de Imagens Estáticas)
echo.

call :stop_and_disable DialogBlockingService
echo (DialogBlockingService)
echo.

call :stop_and_disable DispBrokerDesktopSvc
echo (Exibir Serviço de Política)
echo.

call :stop_and_disable DiagTrack
echo (Experiências do Usuário Conectado e Telemetria)
echo.

call :stop_and_disable PrintNotify
echo (Extensões e Notificações da Impressora)
echo.

call :stop_and_disable Fax
echo (Fax)
echo.

call :stop_and_disable MsKeyboardFilter
echo (Filtro de Teclado da Microsoft)
echo.

call :stop_and_disable RasMan
echo (Gerenciador de conexão de acesso remoto)
echo.

call :stop_and_disable RasAuto
echo (Gerenciador de conexão de acesso remoto automático)
echo.

call :stop_and_disable MapsBroker
echo (Gerenciador de Mapas Baixados)
echo.

call :stop_and_disable SEMgrSvc
echo (Gerenciador de NFC/SE e Pagamentos)
echo.

call :stop_and_disable WdiServiceHost
echo (Host do Serviço de Diagnóstico)
echo.

call :stop_and_disable WdiSystemHost
echo (Host do Sistema de Diagnósticos)
echo.

call :stop_and_disable SharedAccess
echo (ICS (Compartilhamento de Conexão com a Internet))
echo.

call :stop_and_disable NcdAutoSetup
echo (Instalação Automática de Dispositivos Conectados à Rede)
echo.

call :stop_and_disable vmicguestinterface
echo (Interface de Serviço de Convidado do Hyper-V)
echo.

call :stop_and_disable Netlogon
echo (Logon de rede)
echo.

call :stop_and_disable seclogon
echo (Logon secundário)
echo.

call :stop_and_disable pla
echo (Logs e alertas de desempenho)
echo.

call :stop_and_disable lltdsvc
echo (Mapeador da Descoberta de Topologia da Camada de Link)
echo.

call :stop_and_disable McpManagementService
echo (McpManagementService)
echo.

call :stop_and_disable AppVClient
echo (Microsoft App-V Client)
echo.

call :stop_and_disable ssh-agent
echo (OpenSSH Authentication Agent)
echo.

call :stop_and_disable workfolderssvc
echo (Pastas de Trabalho)
echo.

call :stop_and_disable SCPolicySvc
echo (Política de Remoção de Cartão Inteligente)
echo.

call :stop_and_disable CertPropSvc
echo (Propagação de Certificado)
echo.

call :stop_and_disable FDResPub
echo (Publicação de Recursos de Descoberta de Função)
echo.

call :stop_and_disable RemoteRegistry
echo (Registro Remoto)
echo.

call :stop_and_disable RemoteAccess
echo (Roteamento e Acesso Remoto)
echo.

call :stop_and_disable PcaSvc
echo (Serviço Auxiliar de Compatibilidade de Programas)
echo.

call :stop_and_disable BthAvctpSvc
echo (Serviço AVCTP)
echo.

call :stop_and_disable WbioSrvc
echo (Serviço de Biometria do Windows)
echo.

call :stop_and_disable DsSvc
echo (Serviço de Compartilhamento de Dados)
echo.

call :stop_and_disable NetTcpPortSharing
echo (Serviço de Compartilhamento de Porta Net.Tcp)
echo.

call :stop_and_disable WMPNetworkSvc
echo (Serviço de Compartilhamento de Rede do Windows Media Player)
echo.

call :stop_and_disable PrintDeviceConfigurationService
echo (Serviço de Configuração de Impressora)
echo.

call :stop_and_disable BDESVC
echo (Serviço de Criptografia de Unidade de Disco Bitlocker)
echo.

call :stop_and_disable SensorDataService
echo (Serviço de Dados de Sensor)
echo.

call :stop_and_disable RetailDemo
echo (Serviço de Demonstração de Revenda)
echo.

call :stop_and_disable vmicshutdown
echo (Serviço de Desligamento de Convidado do Hyper-V)
echo.

call :stop_and_disable ScDeviceEnum
echo (Serviço de Enumeração de Dispositivo de Cartão Inteligente)
echo.

call :stop_and_disable lfsvc
echo (Serviço de Geocalização)
echo.

call :stop_and_disable icssvc
echo (Serviço de Hotspot Móvel do Windows)
echo.

call :stop_and_disable SensrSvc
echo (Serviço de Monitoramento de Sensor)
echo.

call :stop_and_disable CDPSvc
echo (Serviço de Plataforma de Dispositivos Conectados)
echo.

call :stop_and_disable DPS
echo (Serviço de Política de Diagnóstico)
echo.

call :stop_and_disable vmicheartbeat
echo (Serviço de Pulsação do Hyper-V)
echo.

call :stop_and_disable WerSvc
echo (Serviço de Relatórios de Erro do Windows)
echo.

call :stop_and_disable dmwappushservice
echo (Serviço de Roteamento de mensagens de envio por Push WAP do Gerenciamento de Dispositivos)
echo.

call :stop_and_disable SensorService
echo (Serviço de Sensor)
echo.

call :stop_and_disable perceptionsimulation
echo (Serviço de Simulação de Percepção do Windows)
echo.

call :stop_and_disable vmictimesync
echo (Serviço de Sincronização de Data/Hora do Hyper-V)
echo.

call :stop_and_disable PhoneSvc
echo (Serviço de Telefonia)
echo.

call :stop_and_disable vmickvpexchange
echo (Serviço de Troca de Dados do Hyper-V)
echo.

call :stop_and_disable UevAgentService
echo (Serviço de User Experience Virtualization)
echo.

call :stop_and_disable vmicrdv
echo (Serviço de Virtualização de Área de Trabalho Remota do Hyper-V)
echo.

call :stop_and_disable vmicvmsession
echo (Serviço Direto do Hyper-V PowerShell)
echo.

call :stop_and_disable wisvc
echo (Serviço de Participante do Programa Windows Insider)
echo.

call :stop_and_disable WpnService
echo (Serviço do Sistema de Notificações por Push do Windows)
echo.

call :stop_and_disable WPDBusEnum
echo (Serviço Enumerador de Dispositivos Portáteis)
echo.

call :stop_and_disable ALG
echo (Serviço Gateway de Camada de Aplicativo)
echo.

call :stop_and_disable TermService
echo (Serviços de Área de Trabalho Remota)
echo.

call :stop_and_disable FrameServer
echo (Servidor de Quadros de Câmera do Windows)
echo.

call :stop_and_disable shpamsvc
echo (Shared PC account Manager)
echo.

call :stop_and_disable vmicvss
echo (Solicitante de Cópia de Sombra de Volume do Hyper-V)
echo.

call :stop_and_disable Spooler
echo (Spooler de Impressão)
echo.

call :stop_and_disable SysMain
echo (Sysmain)
echo.

call :stop_and_disable TapiSrv
echo (Telefonia)
echo.

call :stop_and_disable WalletService
echo (WalletService)
echo.

call :stop_and_disable WSearch
echo (Windows Search)
echo.

call :stop_and_disable wuauserv
echo (Windows Update)
echo.

call :stop_and_disable Diagnosticshub.standardcollector.service
echo (Serviço de Coletor Padrão do Hub de Diagnóstico)
echo.

call :stop_and_disable SharedRealitySvc
echo (Serviço de Realidade Compartilhada)
echo.

call :stop_and_disable TabletInputService
echo (Serviço de Teclado Virtual e Painel de Manuscrito)
echo.

echo Para ver todos os serviços do Windows presione Win + R e digite services.msc.

echo.
echo ================================================================
echo.

:: Mensagem após terminar a Parte 2

echo Desativação de serviços desnecessários concluída.

color 0A
set /p continuar="Deseja prosseguir para Comandos no CMD? [S/N]"
color 06

if /i "%continuar%"=="S" goto parte3
if /i "%continuar%"=="N" exit

:parte3

:: Comandos no CMD

echo.
echo ================================================================
echo.

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

winget uninstall "windows web experience pack" >nul 2>&1
color 06
echo XboxGameBar removida.

ipconfig /flushdns >nul 2>&1
netsh winsock reset >nul 2>&1
echo Cache de DNS limpo.

echo Otimize (SSD) ou desfragmente (HD) seus discos e desative a otimização agendada.
dfrgui 
echo Otimização/Desfragmentação de disco concluída.

echo Conclua a limpeza do seu disco.
net session >nul 2>&1

cleanmgr
echo Limpeza de disco concluída.

echo.
echo ================================================================
echo.

:: Mensagem após terminar a Parte 3

echo Comandos no CMD aplicados.

color 0A
set /p continuar="Deseja prosseguir para Limpeza de Arquivos Temporários? [S/N]"
color 06

if /i "%continuar%"=="S" goto parte4.
if /i "%continuar%"=="N" exit

:parte4

:: Parte 4, Limpeza de arquivos temporários

net stop wuauserv >nul 2>&1
net stop bits >nul 2>&1

echo.
echo ================================================================
echo.

echo Limpando arquivos temporários...

echo. 

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

rd /s /q C:\$Recycle.Bin >nul 2>&1
echo Lixeira esvaziada.

echo. 

echo Reiniciando BITS...
net start bits >nul 2>&1
echo BITS Reiniciado.

echo.

echo Arquivos temporários limpos.

:: Mensagem após terminar a Parte 4

echo.
echo ================================================================
echo.

echo Todas as otimizações foram concluídas com sucesso. É recomendado reiniciar.
color 0A

echo.

pause
exit

:stop_and_disable
set service=%1

sc qc %service% >nul 2>&1
if %errorlevel% neq 0 (
    echo Serviço %service% não foi encontrado.
    goto :eof
)

sc qc %service% | findstr /i "start    demand" >nul
if %errorlevel% neq 0 (
    echo Serviço %service% já desativado.
    goto :eof
)

sc stop %service% >nul 2>&1

sc config %service% start= disabled >nul 2>&1

sc qc %service% | findstr /i "start    disabled" >nul
if %errorlevel% equ 0 (
    echo Serviço %service% desativado com sucesso.
)

goto :eof