//
//  TheInternalObjCStaticFrameworkIdentifier.m
//  TheInternalObjCStaticFramework
//
//  Created by Laurie Keith on 05/12/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

#import "TheInternalObjCStaticFrameworkIdentifier.h"
#import "BounceControllerViewController.h"

@implementation TheInternalObjCStaticFrameworkIdentifier

- (NSString*)name {
    return @"Internal Objective-C Static Framework";
}

- (UIViewController*)controller {
    return [[BounceControllerViewController alloc] init];
}

@end
