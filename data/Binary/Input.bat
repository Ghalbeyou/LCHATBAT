@echo off
@mode 58,2
title INPUT
set USER=%2
set GROUP=%1
cd ..
cd GP
:a
cls
set /p msg=Enter Message: 
echo %USER%: %msg% >> "%GROUP%.DLL"
goto :a