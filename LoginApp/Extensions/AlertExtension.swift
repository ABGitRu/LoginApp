//
//  AlertExtension.swift
//  LoginApp
//
//  Created by Mac on 02.04.2021.
//
import UIKit

extension LoginViewController {
    
    // MARK: Алерт контроллер
    func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .cancel) {
            UIAlertAction in
            self.loginTF.text = .none
            self.passwordTF.text = .none
        }
        
        alert.addAction(action)
        present(alert, animated: true)
    }
}
