//
//  TheInternalObjCStaticLibraryIdentifier.h
//  TheInternalObjCStaticLibrary
//
//  Created by Laurie Keith on 05/12/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <TheExternalSwiftProtocolsFramework/TheExternalSwiftProtocolsFramework.h>

@interface TheInternalObjCStaticLibraryIdentifier : NSObject <IdentifyProtocol>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) UIViewController *controller;

@end
