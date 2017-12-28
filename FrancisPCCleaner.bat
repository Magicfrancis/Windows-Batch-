@echo off
title Francis Easy PC Cleaner

:message
cls
wmic cpu get name
echo My First Batch for Windows OS =)
echo Press a number follow by an enter
echo 1. Disk clean and Defrag with a shutdown
echo 2. Disk clean and defrag without a shutdown
echo 3. Temp clean and Disk clean only
echo 4. Watch Kdrama 
echo 5. Exit
set /p op=Input:
if %op%==1 goto :1
if %op%==2 goto :2
if %op%==3 goto :3
if %op%==4 goto :kdrama
if %op%==5 goto :exit
if %op%==6 goto :hidden



:1
:temp clean

@echo +++++++++++++++++++++++++
@echo TEMP FILE CLEAN STARTING
@echo +++++++++++++++++++++++++

rd %temp% /s /q

md %temp%


@echo ++++++++++++++++++
@echo TEMP CLEAN DONE =)
@echo ++++++++++++++++++


goto :diskclean

:diskclean

@echo ++++++++++++++++++++++
@echo DISK CLEAN UP STARTING
@echo ++++++++++++++++++++++

c:\windows\SYSTEM32\cleanmgr.exe /sagerun:1


@echo ++++++++++++++++++
@echo DISK CLEAN DONE =)
@echo ++++++++++++++++++


goto :DEFRAG

:DEFRAG

@echo ++++++++++++++++++
@echo DEFRAG STARTING =)
@echo ++++++++++++++++++

@echo DEFRAG TIME MIGHT TAKE A WHILE SORRY=)

defrag /C /H /U /V

@echo ++++++++++++++++++
@echo DEFRAG COMPLETE =)
@echo ++++++++++++++++++

shutdown /f /s

goto :message

:2
:temp clean

@echo +++++++++++++++++++++++++
@echo TEMP FILE CLEAN STARTING
@echo +++++++++++++++++++++++++

rd %temp% /s /q

md %temp%


@echo ++++++++++++++++++
@echo TEMP CLEAN DONE =)
@echo ++++++++++++++++++


goto :diskclean

:diskclean

@echo ++++++++++++++++++++++
@echo DISK CLEAN UP STARTING
@echo ++++++++++++++++++++++

c:\windows\SYSTEM32\cleanmgr.exe /sagerun:1


@echo ++++++++++++++++++
@echo DISK CLEAN DONE =)
@echo ++++++++++++++++++


goto :DEFRAG

:DEFRAG

@echo ++++++++++++++++++
@echo DEFRAG STARTING =)
@echo ++++++++++++++++++

@echo DEFRAG TIME MIGHT TAKE A WHILE SORRY=)

defrag /C /H /U /V

@echo ++++++++++++++++++
@echo DEFRAG COMPLETE =)
@echo ++++++++++++++++++

goto :kdrama

:3
:temp clean

@echo +++++++++++++++++++++++++
@echo TEMP FILE CLEAN STARTING
@echo +++++++++++++++++++++++++

rd %temp% /s /q

md %temp%


@echo ++++++++++++++++++
@echo TEMP CLEAN DONE =)
@echo ++++++++++++++++++


goto :diskclean

:diskclean

@echo ++++++++++++++++++++++
@echo DISK CLEAN UP STARTING
@echo ++++++++++++++++++++++

c:\windows\SYSTEM32\cleanmgr.exe /sagerun:1


@echo ++++++++++++++++++
@echo DISK CLEAN DONE =)
@echo ++++++++++++++++++

goto :kdrama
goto :exit


:kdrama
start "" http://viki.com
start "" http://dramafever.com
start "" http://magicfrancis.dx.am/tv.html
goto :message

:hidden
start iTunes.exe
start C:\Users\Francis\Desktop\league.ahk
start C:\Users\Francis\Desktop\Games\LeagueofLegends.lnk
goto :message

:exit





