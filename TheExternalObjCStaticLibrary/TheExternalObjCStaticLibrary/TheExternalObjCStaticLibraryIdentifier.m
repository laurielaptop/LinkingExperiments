//
//  TheExternalObjCStaticLibraryIdentifier.m
//  TheExternalObjCStaticLibrary
//
//  Created by Laurie Keith on 14/11/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

#import "TheExternalObjCStaticLibraryIdentifier.h"

@implementation TheExternalObjCStaticLibraryIdentifier

- (NSString*)name {
    return @"External Objective-C Framework";
}

- (UIViewController*)controller {
    return [[UIViewController alloc] init];
}

@end
