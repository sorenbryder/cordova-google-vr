/********* GoogleVRView.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import "GVRPanoramaView.h"
#import "GoogleVRViewController.h"//

@interface GoogleVR : CDVPlugin <GoogleVRDelegate> {

}

@property (strong, nonatomic) GoogleVRViewController *googleVRViewController;

- (void)openImageView:(CDVInvokedUrlCommand*)command;
- (void)didDismissViewController:(UIViewController*)viewController;

@end
