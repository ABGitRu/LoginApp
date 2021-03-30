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
    
    let login = "Admin"
    let password = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTF.delegate = self
        passwordTF.delegate = self
    
        loginTF.returnKeyType = .next
        passwordTF.returnKeyType = .done
    }

    @IBAction func loginButtonTapped() {
        loginTF.text == login && passwordTF.text == password ?
            performSegue(withIdentifier: "toHelloVC", sender: nil) :
            showAlert(with: "Error", and: "Enter correct Login and Password")
    }
    
    @IBAction func remindLoginTapped() {
        showAlert(with: "Your Login", and: login)
    }
    
    @IBAction func remindPasswordTapped() {
        showAlert(with: "Your Password", and: password)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = .none
        passwordTF.text = .none
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let helloVC = segue.destination as? HelloViewController else { return }
        helloVC.userName = loginTF.text
    }
    
    // MARK: Скрыть клавиатуру
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super .touchesBegan(touches, with: event)
    view.endEditing(true)
    }
    
    // MARK: Кнопка Next & Done
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    let nextTFTag = textField.tag + 1

    if let nextResponder = textField.superview?.viewWithTag(nextTFTag) {
        nextResponder.becomeFirstResponder()
    } else {
        loginButtonTapped()
    }
         return true
    }
    
    // MARK: Алерт контроллер
     private func showAlert(with title: String, and message: String) {
     let alert = UIAlertController(title: title,
                                   message: message,
                                   preferredStyle: .alert)
        
     let action = UIAlertAction(title: "Ok", style: .cancel) { _ in
        self.loginTF.text = .none
        self.passwordTF.text = .none
     }
     
     alert.addAction(action)
     present(alert, animated: true)
     }
}


