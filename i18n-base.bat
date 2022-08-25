call prebuild.bat
set currDir=%~dp0
set dartFileList=%currDir%dartFiles.lst
echo %currDir%lib\app_component.dart>%dartFileList%
rem for %%I in (.) do set projName=%%~nxI
set projName=nightscout-reporter
set projName=%projName:-=_%
set dstARB=%currDir%messages
set dstDART=%currDir%lib\messages
set dstFile=intl_de_DE.arb

set dartFiles="%currDir%lib\app_component.dart"
echo collecting files...
for /R "%currDir%web" %%i in (*.dart) do (call :doit %%~i)
for /R "%currDir%lib\src" %%i in (*.dart) do (call :doit %%~i)
for /R "%currDir%.dart_tool\build\generated\%projName%" %%i in (*.template.dart) do (call :doit %%~i)
goto:eof
:doit
set temp=%1
set basedir=
echo %temp%>>%dartFileList%
goto:eof
