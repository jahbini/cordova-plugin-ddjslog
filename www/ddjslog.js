/*global cordova, module*/

module.exports = {
    logio: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "DDJSLogger", "logio", [name]);
    }
};
