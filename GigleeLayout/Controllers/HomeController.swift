//
//  HomeController.swift
//  GigleeLayout
//
//  Created by Muhammad Suleman on 4/28/23.
//

import UIKit

class HomeController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutBtnTapped() {
        
        let isLogin1 = UserDefaults.standard.bool(forKey: "loggedIn")
        print("\nState before logout -> \(String(describing: isLogin1))")
        
        UserDefaults.standard.set(false, forKey: "loggedIn")
        
        let isLogin2 = UserDefaults.standard.bool(forKey: "loggedIn")
        print("\nState after logout -> \(String(describing: isLogin2))")
        
        // Go back....
//        navigationController?.popViewController(animated: true)
       
    }

    
    @IBAction func logoutTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "LoginView", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginController") as! LoginController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
