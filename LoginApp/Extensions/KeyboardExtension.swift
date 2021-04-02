//
//  KeyboardExtension.swift
//  LoginApp
//
//  Created by Mac on 02.04.2021.
//

import UIKit

extension LoginViewController {
    
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
}
