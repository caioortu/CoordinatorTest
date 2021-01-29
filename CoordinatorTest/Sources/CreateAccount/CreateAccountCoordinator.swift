//
//  CreateAccountCoordinator.swift
//  CoordinatorTest
//
//  Created by Caio Ortu on 1/27/21.
//

import UIKit

class CreateAccountCoordinator: NSObject, Coordinator {
    var childCoordinators = [Coordinator]()
    let router: RouterType
    
    private lazy var viewController: some UIViewController = {
        let viewController = CreateAccountViewController.instantiate()
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
