var exec = require('cordova/exec');

exports.openImageView = function(arg0, success, error) {
    exec(success, error, "GoogleVR", "openImageView", [arg0]);
};
