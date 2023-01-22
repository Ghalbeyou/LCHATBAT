@echo off
title Loading

cls

echo Loading ...

ping localhost -n 3 > nul


cls
set yourname=USER_%RANDOM%
echo Please enter your name:
set /p yourname=(Default %yourname%) 
echo Please enter the group name(Without space):
set /p g_name=
cd data
cd GP
if exist "%g_name%.dll" ( goto :loading ) else ( goto :create )

:loading
cls
echo This group already exist, joining ...
ping localhost -n 3 > nul
cd ..
cd Binary
start Input.bat "%g_name%" "%yourname%"
start ChatReader.bat "%g_name%"
exit
cls

:create

cls

echo Creating new group ...

echo Welcome to %g_name% > "%g_name%".DLL
goto :loading