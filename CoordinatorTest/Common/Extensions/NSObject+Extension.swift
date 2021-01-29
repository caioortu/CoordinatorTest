//
//  NSObject+Extension.swift
//  CoordinatorTest
//
//  Created by Caio Ortu on 1/27/21.
//

import Foundation

extension NSObject {
    class var className: String {
        return String(describing: self)
    }
    
    var className: String {
        return Self.className
    }
}
