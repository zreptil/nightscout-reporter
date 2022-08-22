# Nightscout Reporter

A web app based on AngularDart to create PDF documents from nightscout data.

It uses the api from cgm-remote-monitor to access the nightscout data and 
creates some PDFs for handing out to diabetes doctors or coaches. 

Current Dart-SDK version: 2.12.4  
**Note**: Other versions might not work due to incompatible dependencies.

Online version available at: https://nightscout-reporter.zreptil.de/  
Compiled project avaialbe at: https://nightscout-reporter.zreptil.de/nightscout-reporter_local.zip

## Getting started

Initial steps to compile, deploy, and run nightscout reporter on your own infrastructure.

### Preparation
* Download or git clone the repository
* Download an install dart sdk in the stated version (see above) to "C:\tools\dart-sdk"
* Download the [compiled version](https://nightscout-reporter.zreptil.de/nightscout-reporter_local.zip) and extract it

### Build
* Call build.bat from the repository folder in cmd
* Result will be avaialbe in .\build directory
* Copy pdfmake from the downloaded zip to the build folder
* Open .\build\settings.json and set the `urlPDF` and "urlPlayground" option to the location of your pdfmake installation:
```
{
  "urlPDF":"http://your-domain.de/path-to-reporter/pdfmake/pdfmake.php",
  "urlPlayground":"http://your-domain.de/path-to-reporter/pdfmake/playground.php"
}
```

### Deploy
* Get a web server (or online web space) with php support
* Copy content of .\build to the content folder of your web server (or any subfolder)

You can run your own nightscout-reporter instance by calling the URL of your web-server in a browser.

### Web.config
When hosting on an IIS you need to add the following to the web.config to enable the url for Night Watch at http://your-domain.de/path-to-reporter/watch.
```
<system.webServer>
  <rewrite>
    <rules>
      <rule name="watch" stopProcessing="true">
        <match url="^watch$" />
        <action type="Rewrite" url="?watch" />
      </rule>
    </rules>
  </rewrite>
</system.webServer>
```

If anybody knows what to add on other hosting systems just let me know and i will add it here. The technical basis is, that the url nightscout-reporter/watch has to be mapped to nightscout-reporter?watch without causing an illegal page error. With this, it is possible to add nightscout reporter as a WebApp to Windows or to the startscreen of an android phone or iphone.
