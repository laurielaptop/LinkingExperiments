//
//  TheInternalObjCStaticLibraryIdentifier.m
//  TheInternalObjCStaticLibrary
//
//  Created by Laurie Keith on 05/12/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

#import "TheInternalObjCStaticLibraryIdentifier.h"
#import "InternalWebViewController.h"

@implementation TheInternalObjCStaticLibraryIdentifier

- (NSString*)name {
    return @"Internal Objective-C Static Library";
}

- (UIViewController*)controller {
    return [[InternalWebViewController alloc] init];
}

@end
