//
//  LoginViewController.swift
//  notes_swift
//
//  Created by Дмитрий  Маношин  on 16.02.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginTextField.delegate = self
        self.passwordTextField.delegate = self
        
        //
        // tapper for hide keyboard when user tap outside
        //
        let tapper = UITapGestureRecognizer(target: self, action: #selector(tapOutsideKeyboard))
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        self.view.addGestureRecognizer(tapper)
    }
    
    @IBAction func toHomeViewController() {
        let viewController = getViewControllerWithID(identifier: "HomeController")
        self.navigationController?.setViewControllers([viewController], animated: true)
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

// MARK: Extension UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
