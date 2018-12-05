//
//  TheExternalObjCStaticLibraryIdentifier.m
//  TheExternalObjCStaticLibrary
//
//  Created by Laurie Keith on 05/12/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

#import "TheExternalObjCStaticLibraryIdentifier.h"
#import "ExternalWebViewController.h"

@implementation TheExternalObjCStaticLibraryIdentifier

- (NSString*)name {
    return @"External Objective-C Static Library";
}

- (UIViewController*)controller {
    return [[ExternalWebViewController alloc] init];
}

@end
