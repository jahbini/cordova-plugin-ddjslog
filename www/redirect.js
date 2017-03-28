/*global cordova, module*/

module.exports = {
    stderr: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Redirect", "stderr", [name]);
    }
};
