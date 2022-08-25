@echo off
cls
set currDir=%~dp0
set srcDir=%userprofile%\Desktop\NRImages
set dstDir=%currDir%\lib\assets\img\thumbs
set rar="%ProgramFiles%\WinRAR\WinRAR.exe"
for %%i in (%srcDir%\nr-images.*.zip) do call :extract %%~ni
goto :ende
:extract
set p=%1
set dst=%dstDir%\%p:~-2%
md %dst%
%rar% x -o+ %srcDir%\%1.zip *.* %dst%
goto :eof
:ende
pause
