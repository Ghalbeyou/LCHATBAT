@echo off
@mode 59,31
title BOX
set GROUP=%1
cd ..
cd GP
:a
cls
type "%GROUP%.DLL"
ping localhost -n 3 > nul
goto :a