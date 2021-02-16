//
//  ViewController.swift
//  notes_swift
//
//  Created by Дмитрий  Маношин  on 16.02.2021.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    @IBAction func toLogin() {
        self.navigationController?.pushViewController(getViewControllerWithID(identifier: "LoginController"), animated: true)
    }
    
    @IBAction func toSignUp() {
        self.navigationController?.pushViewController(getViewControllerWithID(identifier: "SignUpController"), animated: true)
    }
    
}

