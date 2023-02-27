@echo off
:home
cls
echo Welcome to StampIt!
title StampIt
echo Code inspired by Clockbar. Here is the link: https://github.com/jandsnadell428/clockbar/releases/tag/v1.0
set /p name=If you want to include your name, put it there. If not, leave nothing.
cls
echo This is for timestamps, like the beginning or the end.
set /p bore=If you want the beginning of the page, leave "begin". If you want the end of the page stamped, leave "end".
if "%bore%"=="begin" goto b
if "%bore%"=="end" goto e
:exit
exit
:b
set /p filepath=What is the path to the file? 
ping localhost -n 10 > nul
echo Begin time is: %time% %date% Creator: %name% >> "%filepath%"
echo Here is a preview:
type "%filepath%"
echo Thank you for using StampIt. See you again soon!
pause
goto home
:e
set /p filepath=What is the path to the file? 
ping localhost -n 10 > nul
echo End time is: %time% %date% Stamps created by StampIt. >> "%filepath%"
echo Here is a preview:
type "%filepath%"
echo Thank you for using StampIt. See you again soon!
pause
goto home
