//
//  SignUpViewController.swift
//  notes_swift
//
//  Created by Дмитрий  Маношин  on 16.02.2021.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var loginField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var confirmPasswordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: nil)
        
        let tapper = UITapGestureRecognizer(target: self, action: #selector(tapOutsideKeyboard))
        self.view.addGestureRecognizer(tapper)
    }
    
    @IBAction func signUp(_ sender: Any) {
        let user = User(name: nameField.text!, login: loginField.text!, password: passwordField.text!)
        
        if let encodedUser = try? JSONEncoder().encode(user) {
            UserDefaults.standard.set(encodedUser, forKey: user.login)
            self.navigationController?.popViewController(animated: true)
        } else {
            print("Wrong data")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
