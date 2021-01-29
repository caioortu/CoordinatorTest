//
//  MainCoordinator.swift
//  CoordinatorTest
//
//  Created by Caio Ortu on 1/27/21.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    let router: RouterType
    
    private lazy var viewController: some UIViewController = {
        let viewController = MainViewController.instantiate()
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

extension MainCoordinator: MainActions {
    func buySubscription() {
        let coordinator = BuyCoordinator(router: router)
        addChild(coordinator)
        router.push(coordinator, animated: true) { [weak self, weak coordinator] in
            self?.removeChild(coordinator)
        }
    }
    
    func createAccount() {
        let coordinator = CreateAccountCoordinator(router: router)
        addChild(coordinator)
        router.push(coordinator, animated: true) { [weak self, weak coordinator] in
            self?.removeChild(coordinator)
        }
    }
}
