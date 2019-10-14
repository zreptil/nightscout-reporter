@echo off
setlocal disableDelayedExpansion
set "file=%~1"
set "line=%file%.line"
set "deduped=%file%.deduped"
::Define a variable containing a linefeed character
set LF=^


::The 2 blank lines above are critical, do not remove
>"%deduped%" (
  for /f usebackq^ eol^=^%LF%%LF%^ delims^= %%A in ("%file%") do (
    set "ln=%%A"
    setlocal enableDelayedExpansion
    >"%line%" (echo !ln:\=\\!)
    >nul findstr /xlg:"%line%" "%deduped%" || (echo !ln!)
    endlocal
  )
)
>nul move /y "%deduped%" "%~n1_deduped%~x1"
2>nul del "%line%"
