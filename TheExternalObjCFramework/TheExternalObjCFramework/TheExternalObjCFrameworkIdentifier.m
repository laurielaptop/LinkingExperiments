//
//  TheExternalObjCFrameworkIdentifier.m
//  TheExternalObjCFramework
//
//  Created by Laurie Keith on 14/11/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

#import "TheExternalObjCFramework.h"
#import "ImageViewController.h"

@implementation TheExternalObjCFrameworkIdentifier

- (NSString*)name {
    return @"External Objective-C Dynamic Framework";
}

- (UIViewController*)controller {
    return [[ImageViewController alloc] init];
}

@end
