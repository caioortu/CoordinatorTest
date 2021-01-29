//
//  BuyCoordinator.swift
//  CoordinatorTest
//
//  Created by Caio Ortu on 1/27/21.
//

import UIKit

class BuyCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    let router: RouterType
    
    private lazy var viewController: some UIViewController = {
        let viewController = BuyViewController.instantiate()
        viewController.coordinator = self
        return viewController
    }()
    
    init(router: RouterType) {
        self.router = router
    }
    
    func toPresentable() -> UIViewController {
        return viewController
    }
}
