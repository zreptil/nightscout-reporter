@echo off
call i18n-base.bat
rd %dstARB% /q/s
md %dstARB%
echo creating arb-file...
call pub.bat run ..\intl_translation\bin\extract_to_arb --output-dir "%dstARB%" --output-file "%dstFile%" --dart-list %dartFileList%
echo done!
start "" "https://crowdin.com/project/nightscout-reporter/settings#files"
