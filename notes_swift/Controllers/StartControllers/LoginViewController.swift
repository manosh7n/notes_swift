//
//  LoginViewController.swift
//  notes_swift
//
//  Created by Дмитрий  Маношин  on 16.02.2021.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
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
