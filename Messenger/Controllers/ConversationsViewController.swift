//
//  ViewController.swift
//  Messenger
//
//  Created by Saqib Bhatti on 21/12/23.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let is_logged_in = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !is_logged_in {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }

    
}

