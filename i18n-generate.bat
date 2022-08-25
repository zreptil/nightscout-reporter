call i18n-base.bat
md %dstARB% 2>nul
md %dstARB%\temp 2>nul
echo generating dart-files...
pushd ..\intl_translation
set arbFileList=arbFiles.lst
echo %dstARB%\es-ES\intl_es_ES.arb>%arbFileList%
echo %dstARB%\intl_de_DE.arb>>%arbFileList%
echo %dstARB%\en-US\intl_en_US.arb>>%arbFileList%
echo %dstARB%\en-GB\intl_en_GB.arb>>%arbFileList%
echo %dstARB%\pl\intl_pl_PL.arb>>%arbFileList%
echo %dstARB%\ja\intl_ja_JP.arb>>%arbFileList%
echo %dstARB%\sk\intl_sk_SK.arb>>%arbFileList%
echo %dstARB%\fr\intl_fr_FR.arb>>%arbFileList%
echo %dstARB%\pt-PT\intl_pt_PT.arb>>%arbFileList%
echo %dstARB%\nl\intl_nl_NL.arb>>%arbFileList%
call %pub% run bin\generate_from_arb --output-dir "%dstARB%\temp" --dart-list %dartFileList% --arb-list %arbFileList%
copy %dstARB%\temp\messages_all.dart %dstDART%
popd
call i18n-dedupe.bat < %dstARB%\temp\messages_de_DE.dart > %dstDART%\messages_de_DE.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_en_US.dart > %dstDART%\messages_en_US.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_en_GB.dart > %dstDART%\messages_en_GB.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_es_ES.dart > %dstDART%\messages_es_ES.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_pl_PL.dart > %dstDART%\messages_pl_PL.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_ja_JP.dart > %dstDART%\messages_ja_JP.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_sk_SK.dart > %dstDART%\messages_sk_SK.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_fr_FR.dart > %dstDART%\messages_fr_FR.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_pt_PT.dart > %dstDART%\messages_pt_PT.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_nl_NL.dart > %dstDART%\messages_nl_NL.dart
rd  /s /q %dstARB%\temp
del %dartFileList%
del %arbFileList%
pause