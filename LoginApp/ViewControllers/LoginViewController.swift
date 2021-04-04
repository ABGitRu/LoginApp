//
//  ViewController.swift
//  LoginApp
//
//  Created by Mac on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let user =  User.getUser()

    @IBAction func loginButtonTapped() {
        loginTF.text == user.login && passwordTF.text == user.password ?
            performSegue(withIdentifier: "toHelloVC", sender: nil) :
            showAlert(with: "Error", and: "Enter correct Login and Password")
    }
    
    @IBAction func remindLoginTapped() {
        showAlert(with: "Your Login", and: user.login)
    }
    
    @IBAction func remindPasswordTapped() {
        showAlert(with: "Your Password", and: user.password)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = .none
        passwordTF.text = .none
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let helloVC = viewController as? HelloViewController {
                helloVC.userName = User.getFullName()
            } else if let navigationVC = viewController as? UINavigationController {
                guard let bioVC = navigationVC.topViewController as? BioViewController else { return }
                bioVC.user = user
            }
        }
    }
}


