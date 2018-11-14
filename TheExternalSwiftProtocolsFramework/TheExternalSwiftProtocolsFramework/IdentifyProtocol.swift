//
//  IdentifyProtocol.swift
//  TheExternalSwiftProtocolsFramework
//
//  Created by Laurie Keith on 14/11/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

import Foundation

@objc public protocol IdentifyProtocol {
    var name: String { get }
    var controller: UIViewController { get }
}
