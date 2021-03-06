//
//  HelloViewController.swift
//  LoginApp
//
//  Created by Mac on 30.03.2021.
//

import UIKit

class HelloViewController: UIViewController {
    
    @IBOutlet var helloLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = userName {
            helloLabel.text = "Hello, \(user) 🏎 "
        }
        
    }
}
