//
//  TheExternalObjCStaticFrameworkIdentifier.m
//  TheExternalObjCStaticFramework
//
//  Created by Laurie Keith on 05/12/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

#import "TheExternalObjCStaticFrameworkIdentifier.h"
#import "ChessViewController.h"

@implementation TheExternalObjCStaticFrameworkIdentifier
- (NSString*)name {
    return @"External Objective-C Static Framework";
}

- (UIViewController*)controller {
    return [[ChessViewController alloc] init];
}

@end
