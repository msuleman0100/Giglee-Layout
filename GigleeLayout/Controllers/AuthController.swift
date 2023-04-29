//
//  ViewController.swift
//  GigleeLayout
//
//  Created by Muhammad Suleman on 4/28/23.
//

import UIKit
import Foundation
import SwiftUI


class AuthController: UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func loginTapped(_ sender: Any) {

        if email.text == "" || password.text == ""  {
            print("\nEnter email address and password to continue....")
        } else {
            
            //Save user
            let enteredEmail = email.text!
            let user = UserModel(email: enteredEmail, isLoggedIn: true)
            addUserDefaults(user)
            
            //Goto MainView
            let storyboard = UIStoryboard(name: "MainView", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "HomeView") as! HomeController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func registerBtnTapped() { }
    
    @IBAction func forgotPaassBtnTapped() { }
    
}

//MARK:  Managing UserDefaults
extension AuthController {
    
    private func addUserDefaults(_ userData: UserModel) {
        if let encoded = try? JSONEncoder().encode(userData) {
            UserDefaults.standard.set(encoded, forKey: "loggedIn")
        } else {
            print("\nCouldn't decode and save user object to UserDefaults\n")
        }
    }
    
}
