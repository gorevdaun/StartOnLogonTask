@echo off
title Start On Logon Task

:: Prompt user for the path
echo Please enter the full path to your .exe file
set /p APP_PATH=Path: 

:: Remove surrounding quotes if any
set APP_PATH=%APP_PATH:"=%

:: Prompt user for the task name
echo Please enter the Task Name to be created in Task Scheduler
set /p TASK_NAME=Task Name: 

:: Remove surrounding quotes if any
set TASK_NAME=%TASK_NAME:"=%

:: VALIDATION
if "%APP_PATH%"=="" (
    echo [ERROR] No path entered.
    pause
    exit /b
)

if not exist "%APP_PATH%" (
    echo [ERROR] File not found: %APP_PATH%
    pause
    exit /b
)

if "%TASK_NAME%"=="" (
    echo [ERROR] No task name entered.
    pause
    exit /b
)

:: Create the scheduled task
schtasks /create /tn "%TASK_NAME%" /tr "\"%APP_PATH%\"" /sc onlogon /rl highest /f

echo [SUCCESS] Your program will start as administrator at logon under task "%TASK_NAME%"

pause
exit
