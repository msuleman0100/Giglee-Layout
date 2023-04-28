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
    
    
    @IBAction func loginTapped(_ sender: Any) {
    
        let isLogin1 = UserDefaults.standard.bool(forKey: "loggedIn")
        print("\nState before login -> \(String(describing: isLogin1))")
        
        UserDefaults.standard.set(true, forKey: "loggedIn")
        
        let isLogin2 = UserDefaults.standard.bool(forKey: "loggedIn")
        print("\nState after login -> \(String(describing: isLogin2))")
        
        //Goto login screen
        
        let storyboard = UIStoryboard(name: "HomeView", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "HomeController") as! HomeController
        self.navigationController?.pushViewController(vc, animated: true)
    
    }
    
    @IBAction func registerBtnTapped() { }
    
    @IBAction func forgotPaassBtnTapped() { }
    
}

