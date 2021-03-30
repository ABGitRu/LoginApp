//
//  ViewController.swift
//  LoginApp
//
//  Created by Mac on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTF.delegate = self
        passwordTF.delegate = self
    
        loginTF.returnKeyType = .next
        passwordTF.returnKeyType = .done
    }

    @IBAction func loginButtonTapped() {
        loginTF.text == "Admin" && passwordTF.text == "1234" ?
            performSegue(withIdentifier: "toHelloVC", sender: nil) :
            showAlert(with: "Error", and: "Enter correct Login and Password")
        
        loginTF.text = .none
        passwordTF.text = .none
    }
    
    @IBAction func remindLoginTapped() {
        showAlert(with: "Your Login", and: "Admin")
    }
    
    @IBAction func remindPasswordTapped() {
        showAlert(with: "Your Password", and: "1234")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let helloVC = segue.source as? HelloViewController else { return }
        loginTF.text = helloVC.userName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let helloVC = segue.destination as? HelloViewController else { return }
        helloVC.userName = loginTF.text
    }
    

}


