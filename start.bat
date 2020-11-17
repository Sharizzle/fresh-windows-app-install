@echo off
CLS
set currentpath=%cd%
echo New PC Application Setup!
echo Script made by Sharif Kanaan
echo https://sharif.thekanaan.com or https://github.com/Sharizzle
echo Run script in admin mode and at your own risk
ECHO.

:MENU
ECHO .................................................
ECHO If this is your first time press 1 or 2
ECHO PRESS 3-8 to install different packs
ECHO PRESS 9 to upgrade and 0 to exit
ECHO You can edit any of the packs by removing lines in the dedicated folders
ECHO .................................................
ECHO.

ECHO 1 - Install Chocolatey Only
ECHO 2 - Install Chocolatey with General Apps Pack
ECHO 3 - Install General Apps Pack
ECHO 4 - Install Developer Apps Pack
ECHO 5 - Install Gamer Apps Pack
ECHO 6 - Install Nvidia Apps Pack
ECHO 7 - Install Online Meetings Apps Pack
ECHO 8 - Install Cloud Storage Apps Pack
ECHO 9 - Upgrade All Apps
ECHO 0 - EXIT

ECHO.


SET /P M=Type the number then press ENTER:
IF %M%==1 GOTO INSTALLCHOCOONLY
IF %M%==2 GOTO INSTALL
IF %M%==3 GOTO GENERAL
IF %M%==4 GOTO DEVELOPER
IF %M%==5 GOTO GAMER
IF %M%==6 GOTO NVIDIA
IF %M%==7 GOTO MEETINGS
IF %M%==8 GOTO CLOUDSTORAGE
IF %M%==9 GOTO UPGRADE
IF %M%==0 GOTO CLOSE


:INSTALLCHOCOONLY
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n allowGlobalConfirmation
choco upgrade chocolatey
GOTO MENU

:INSTALL
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n allowGlobalConfirmation
choco upgrade chocolatey
GOTO GENERAL

:GENERAL
choco install %currentpath%\"General Apps"\generalapps.config   
GOTO MENU

:DEVELOPER
choco install %currentpath%\"Developer Apps"\developerapps.config   
GOTO MENU

:GAMER
choco install %currentpath%\"Gamer Apps"\gamerapps.config   
GOTO MENU

:NVIDIA
choco install %currentpath%\"Nvidia Apps"\nvidiaapps.config   
GOTO MENU

:MEETINGS
choco install %currentpath%\"Online Meetings Apps"\onlinemeetingapps.config   
GOTO MENU

:CLOUDSTORAGE
choco install %currentpath%\"Cloud Storage Apps"\cloudstorageapps.config   
GOTO MENU

:UPGRADE
choco upgrade all
GOTO MENU

:CLOSE
EXIT