//
//  ViewController.swift
//  GigleeLayout
//
//  Created by Muhammad Suleman on 4/28/23.
//

import UIKit


class LoginController: UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginBtnTapped() {
        
        print("\nEmail -> \(email.text)")
        print("Passwordd -> \(password.text)")
    }
    
    @IBAction func registerBtnTapped() { }
    
    @IBAction func forgotPaassBtnTapped() { }
    
}

