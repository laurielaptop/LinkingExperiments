//
//  Identifier.swift
//  TheExternalSwiftStaticLibrary
//
//  Created by Laurie Keith on 14/11/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

import Foundation
import TheExternalSwiftProtocolsFramework

@objc open class Identifier: NSObject, IdentifyProtocol {
    
    @objc public lazy var name = {
        return "External Swift Static Library"
    }()
    
    @objc public lazy var controller: UIViewController = {
        return WebViewController()
    }()

}
