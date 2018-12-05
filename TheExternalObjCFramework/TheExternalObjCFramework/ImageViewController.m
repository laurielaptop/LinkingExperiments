//
//  ImageViewController.m
//  TheExternalObjCFramework
//
//  Created by Laurie Keith on 14/11/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Image View";
    self.view.backgroundColor = UIColor.orangeColor;
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    NSBundle *bundle = [NSBundle bundleForClass:[ImageViewController class]];
    UIImage *image = [UIImage imageNamed:@"Image" inBundle:bundle compatibleWithTraitCollection: nil];
    imageView.image = image;
    [self.view addSubview:imageView];
}

@end
