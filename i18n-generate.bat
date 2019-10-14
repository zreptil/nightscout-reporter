call i18n-base.bat
md %dstARB%
md %dstARB%\temp
echo generating dart-files...
set arbFileList=arbFiles.lst
echo messages\es-ES\intl_es_ES.arb>%arbFileList%
echo messages\intl_de_DE.arb>>%arbFileList%
echo messages\en-US\intl_en_US.arb>>%arbFileList%
echo messages\en-GB\intl_en_GB.arb>>%arbFileList%
echo messages\pl\intl_pl_PL.arb>>%arbFileList%
echo messages\ja\intl_ja_JP.arb>>%arbFileList%
call pub.bat run ..\intl_translation\bin\generate_from_arb --output-dir "%dstARB%\temp" --dart-list %dartFileList% --arb-list %arbFileList%
copy %dstARB%\temp\messages_all.dart %dstDART%
call i18n-dedupe.bat < %dstARB%\temp\messages_de_DE.dart > %dstDART%\messages_de_DE.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_en_US.dart > %dstDART%\messages_en_US.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_en_GB.dart > %dstDART%\messages_en_GB.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_es_ES.dart > %dstDART%\messages_es_ES.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_pl_PL.dart > %dstDART%\messages_pl_PL.dart
call i18n-dedupe.bat < %dstARB%\temp\messages_ja_JP.dart > %dstDART%\messages_ja_JP.dart
rd  /s /q %dstARB%\temp
del %dartFileList%
del %arbFileList%
