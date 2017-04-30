#import "GoogleVR.h"

@implementation GoogleVR


- (void)openImageView:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* imagePath = [command.arguments objectAtIndex:0];
    NSLog(@"%@", @"openImageView");
    NSLog(@"%@", imagePath);

    if (imagePath != nil && [imagePath length] > 0) {
        
        if (!self.googleVRViewController)
        {
            self.googleVRViewController = [[GoogleVRViewController alloc] initWithNibName:nil bundle:nil];
            self.googleVRViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            self.googleVRViewController.delegate = self;
        }
        
        [self.googleVRViewController openImageView:imagePath];
        
        [self.viewController presentViewController:self.googleVRViewController animated:YES completion:nil];
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

    
}

- (void)didDismissViewController:(UIViewController*)viewController
{
    self.googleVRViewController = nil;
}

@end
