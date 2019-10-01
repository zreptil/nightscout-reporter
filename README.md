# Nightscout Reporter

A web app based on AngularDart to create PDF documents from nightscout data.

It uses the api from cgm-remote-monitor to access the nightscout data and 
creates some PDFs for handing out to diabetes doctors or coaches.  

## Translation

```
# version 0.17.6 needed which is not compatible with angular: ^5.3.1
# so install it globally
# should, but doesn't contain pull request: pub global activate intl_translation
pub global activate -sgit https://github.com/zreptil/intl_translation.git

# generate translation resources from ARB files
pub run i18n-gen
```