//
//  LoginVCExtension.swift
//  LoginApp
//
//  Created by Mac on 30.03.2021.
//

import UIKit

extension LoginViewController: UITextFieldDelegate {
 
// MARK: Алерт контроллер
 func showAlert(with title: String, and message: String) {
 let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
 let action = UIAlertAction(title: "Ok", style: .cancel) { _ in
 self.loginTF.text = ""
 self.passwordTF.text = ""
 }
 
 alert.addAction(action)
 present(alert, animated: true)
 }
    
// MARK: Скрыть клавиатуру
override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
super .touchesBegan(touches, with: event)
view.endEditing(true)
}
    
// MARK: Кнопка Next & Done
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    let nextTFTag = textField.tag + 1

     if let nextResponder = textField.superview?.viewWithTag(nextTFTag) {
         nextResponder.becomeFirstResponder()
     } else {
         textField.resignFirstResponder()
     }
    
    if textField.tag == 1 {
        loginButtonTapped()
    }
     return true
}
}
