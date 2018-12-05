//
//  String+Utilities.swift
//  TheExternalSwiftStaticFramework
//
//  Created by Laurie Keith on 05/12/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

import Foundation

extension String {
    public func stringByAppendingPathComponent(path: String) -> String {
        let temp = self as NSString
        return temp.appendingPathComponent(path)
    }
}
