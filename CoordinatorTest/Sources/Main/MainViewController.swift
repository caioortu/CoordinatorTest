//
//  MainViewController.swift
//  CoordinatorTest
//
//  Created by Caio Ortu on 1/26/21.
//

import UIKit

protocol MainActions: class {
    func buySubscription()
    func createAccount()
}

class MainViewController: UIViewController, NibController {
    
    weak var coordinator: (Coordinator & MainActions)?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createAccount(_ sender: Any) {
        coordinator?.createAccount()
    }
}
