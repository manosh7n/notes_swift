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
        
        
        // Delete all values from UserDefaults.standart (for test)
        let defaults = UserDefaults.standard
        let dictionary = defaults.dictionaryRepresentation()
        dictionary.keys.forEach { key in
            defaults.removeObject(forKey: key)
        }
        
    }
    
    @IBAction func toLogin() {
        self.navigationController?.pushViewController(getViewControllerWithID(identifier: "LoginController"), animated: true)
    }
    
    @IBAction func toSignUp() {
        self.navigationController?.pushViewController(getViewControllerWithID(identifier: "SignUpController"), animated: true)
    }
    
}

