# Cordova Redirect Plugin

Simple plugin that attempts to redirect logio to a file in iOS for logging purposes.

when invoked, this plugin will redirect the current logio handle the file name specified by the javscript caller
to the app's Document directory.  All writes to logio (NSLog) will be appended to the file name specified.

## Using

Create a new Cordova Project

    $ cordova create hello com.example.helloapp Hello
    
Install the plugin

    $ cd hello
    $ cordova plugin add https://github.com/jahbini/cordova-plugin-redirect.git
    

Edit `www/js/index.js` and add the following code inside `onDeviceReady`

```js
    var success = function(message) {
        alert(message);
    }

    var failure = function() {
        alert("Error calling Hello Plugin");
    }

    redirect.logio("World", success, failure);
```

Install iOS platform

    cordova platform add ios
    
Run the code

    cordova run 

## More Info

For more information on setting up Cordova see [the documentation](http://cordova.apache.org/docs/en/latest/guide/cli/index.html)

For more info on plugins see the [Plugin Development Guide](http://cordova.apache.org/docs/en/latest/guide/hybrid/plugins/index.html)
