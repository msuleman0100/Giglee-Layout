//
//  HomeController.swift
//  GigleeLayout
//
//  Created by Muhammad Suleman on 4/28/23.
//

import UIKit

class HomeController: UIViewController {
    
    
    @IBOutlet weak var currentUser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchUserData()
    }
    
    private func fetchUserData() {
        if let data = UserDefaults.standard.object(forKey: "loggedIn") as? Data,
           let user = try? JSONDecoder().decode(UserModel.self, from: data) {
            currentUser.text = user.email
        }
    }
    
    
    @IBAction func logoutTapped(_ sender: Any) {
        
        //Logout User
        UserDefaults.standard.removeObject(forKey: "loggedIn")
        //Goto LoginView
        let storyboard = UIStoryboard(name: "AuthView", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginView") as! AuthController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func ForgotPassBtnTappeed(_ sender: Any) {
        print("helloo")
    }
    
    @IBAction func ForgotPassBtnTappeedAgain(_ sender: Any) {
    }
    
    
}
