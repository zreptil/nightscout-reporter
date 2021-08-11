call prebuild.bat
set dartFileList=..\nightscout-reporter\dartFiles.lst
echo ..\nightscout-reporter\lib\app_component.dart>%dartFileList%
for %%I in (.) do set projName=%%~nxI
set projName=%projName:-=_%
set dstARB=..\nightscout-reporter\messages
set dstDART=..\nightscout-reporter\lib\messages
set dstFile=intl_de_DE.arb

set dartFiles="..\nightscout-reporter\lib\app_component.dart"
echo collecting files...
for /R "..\nightscout-reporter\web" %%i in (*.dart) do (call :doit %%~i)
for /R "..\nightscout-reporter\lib\src" %%i in (*.dart) do (call :doit %%~i)
for /R "..\nightscout-reporter\.dart_tool\build\generated\%projName%" %%i in (*.template.dart) do (call :doit %%~i)
cls
goto:eof
:doit
set temp=%1
set basedir=
echo %temp%>>%dartFileList%
goto:eof
