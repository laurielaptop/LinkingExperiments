//
//  TheInternalObjCFrameworkIdentifier.m
//  TheInternalObjCFramework
//
//  Created by Laurie Keith on 14/11/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

#import "TheInternalObjCFrameworkIdentifier.h"
#import "OpenGLViewController.h"

@implementation TheInternalObjCFrameworkIdentifier

- (NSString*)name {
    return @"Internal Objective-C Dynamic Framework";
}

- (UIViewController*)controller {
    return [[OpenGLViewController alloc] init];
}

@end
