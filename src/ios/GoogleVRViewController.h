//
//  GoogleVRViewController.h
//  cordova-google-vr
//
//  Created by Søren Bryder Nielsen on 30/04/2017.
//  Copyright © 2017 Søren Bryder Nielsen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GVRPanoramaView.h"

@protocol GoogleVRDelegate <NSObject>
- (void)didDismissViewController:(UIViewController*)viewController;
@end

@interface GoogleVRViewController : UIViewController

@property (nonatomic, weak) id<GoogleVRDelegate> delegate;
@property (strong, nonatomic) GVRPanoramaView *imageView;
@property (strong, nonatomic) UIButton *closeButton;
@property BOOL showStatusBar;

- (void) openImageView:(NSString*)imagePath;
- (void) openVideoView:(NSString*)videoPath;
- (IBAction)closeClick:(id)sender;


@end


