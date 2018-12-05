//
//  TheInternalObjCStaticFrameworkIdentifier.h
//  TheInternalObjCStaticFramework
//
//  Created by Laurie Keith on 05/12/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <TheExternalSwiftProtocolsFramework/TheExternalSwiftProtocolsFramework.h>

NS_ASSUME_NONNULL_BEGIN

@interface TheInternalObjCStaticFrameworkIdentifier : NSObject <IdentifyProtocol>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) UIViewController *controller;

@end

NS_ASSUME_NONNULL_END
