//
//  NibController.swift
//  CoordinatorTest
//
//  Created by Caio Ortu on 1/27/21.
//

import UIKit

protocol NibController {
    static func instantiate() -> Self
}

extension NibController where Self: UIViewController {
    static func instantiate() -> Self {
        return Self(nibName: Self.className, bundle: nil)
    }
}
