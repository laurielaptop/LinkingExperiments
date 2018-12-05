//
//  Identifier.swift
//  TheExternalSwiftStaticFramework
//
//  Created by Laurie Keith on 05/12/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

import Foundation
import TheExternalSwiftProtocolsFramework

@objc open class Identifier: NSObject, IdentifyProtocol {
    
    @objc public lazy var name = {
        return "External Swift Static Framework"
    }()
    
    @objc public lazy var controller: UIViewController = {
        return GLKController()
    }()
    
}
