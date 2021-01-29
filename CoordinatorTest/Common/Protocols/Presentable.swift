//
//  Presentable.swift
//  CoordinatorTest
//
//  Created by Caio Ortu on 1/28/21.
//

import UIKit

protocol Presentable {
    func toPresentable() -> UIViewController
}

extension UIViewController: Presentable {
    func toPresentable() -> Self {
        return self
    }
}
