//
//  AppDelegate.swift
//  GigleeLayout
//
//  Created by Muhammad Suleman on 4/28/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //Check auth state and set initial View-Controller
        configureInitialViewController()
        
        return true
    }
    
    private func configureInitialViewController() {
        
        window = UIWindow()
//        let isLogin = UserDefaults.standard.bool(forKey: "loggedIn")
//
//        print("\nState on First-Launch -> \(String(describing: isLogin))")
//        //Check that user login or not
//        if isLogin {
            //If already login then show Dashboard screen
//            let initialViewController: UIViewController
//            let storyboard = UIStoryboard(name: "HomeView", bundle: nil)
//            let mainViewController = storyboard.instantiateViewController(withIdentifier: "HomeController")
//            initialViewController = mainViewController
//            window?.rootViewController = initialViewController
//            window?.makeKeyAndVisible()
            
//        } else {
//            //otherwise show login screen
            let initialViewController: UIViewController
            let storyboard = UIStoryboard(name: "LoginView", bundle: nil)
            let loginViewController = storyboard.instantiateViewController(withIdentifier: "LoginController")
            initialViewController = loginViewController
            window?.rootViewController = initialViewController
            window?.makeKeyAndVisible()
//
//        }
    }
    
}
