@echo off
cls
set dartFileList=dartFiles.lst
echo lib\app_component.dart>%dartFileList%
for %%I in (.) do set projName=%%~nxI
set projName=%projName:-=_%
set dstARB=messages
set dstDART=lib\messages
set dstFile=intl_de_DE.arb

set dartFiles="lib\app_component.dart"
echo collecting files...
for /R "web" %%i in (*.dart) do (call :doit %%~i)
for /R "lib\src" %%i in (*.dart) do (call :doit %%~i)
for /R ".dart_tool\build\generated\%projName%" %%i in (*.template.dart) do (call :doit %%~i)
goto:eof
:doit
set temp=%1
set basedir=
echo %temp%>>%dartFileList%
goto:eof
