//
//  Identifier.swift
//  TheExternalSwiftFramework
//
//  Created by Laurie Keith on 14/11/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

import TheExternalSwiftProtocolsFramework

@objc open class Identifier: NSObject, IdentifyProtocol {
    
    @objc public lazy var name = {
        return "External Swift Dynamic Framework"
    }()
    
    @objc public lazy var controller: UIViewController = {
        return VideoPlaybackViewController()
    }()
    
}
