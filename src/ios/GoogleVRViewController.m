//
//  GoogleVRViewController.m
//  cordova-google-vr
//
//  Created by Søren Bryder Nielsen on 30/04/2017.
//  Copyright © 2017 Søren Bryder Nielsen. All rights reserved.
//

#import "GoogleVRViewController.h"

@interface GoogleVRViewController ()

@end

@implementation GoogleVRViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    self.closeButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 80, 40)];
    [self.closeButton setBackgroundColor:[UIColor blackColor]];
    [self.closeButton setTitle:@"Luk" forState:UIControlStateNormal];
    [self.closeButton addTarget:self action:@selector(closeClick:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:self.closeButton];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (IBAction)closeClick:(id)sender {
    [self.imageView removeFromSuperview];
    [self.closeButton removeFromSuperview];
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate didDismissViewController:self];
}

- (void) openImageView:(NSString*)imagePath {
    CGRect viewFrame = self.view.frame;

    self.imageView = [[GVRPanoramaView alloc] initWithFrame:viewFrame];

    [self.imageView loadImage:[UIImage imageNamed:@"andes.jpg"]
                          ofType:kGVRPanoramaImageTypeStereoOverUnder];
    [self.imageView setEnableFullscreenButton:YES];
    
    for (UIView *view in self.imageView.subviews) {
        if ([view isKindOfClass:[UIButton class]] ) {
            if ([NSStringFromClass([view class]) isEqualToString:@"QTMButton"] ) {
                [view removeFromSuperview];
            }
        }
    }

    [self.view insertSubview:self.imageView belowSubview:self.closeButton];
    [self.view addSubview:self.imageView];

}

- (void) openVideoView:(NSString*)videoPath {

}


@end
