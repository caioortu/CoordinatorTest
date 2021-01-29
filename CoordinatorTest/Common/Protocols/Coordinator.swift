//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by Caio Ortu on 1/26/21.
//

import UIKit

protocol Coordinator: class, Presentable {
    var childCoordinators: [Coordinator] { get set }
    var router: RouterType { get }
    
    func addChild(_ coordinator: Coordinator)
    func removeChild(_ coordinator: Coordinator?)
}

extension Coordinator {
    
    func addChild(_ child: Coordinator) {
        childCoordinators.append(child)
    }
    
    func removeChild(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() where coordinator === child {
            childCoordinators.remove(at: index)
            break
        }
    }
}
