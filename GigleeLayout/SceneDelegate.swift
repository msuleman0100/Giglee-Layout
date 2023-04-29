//
//  SceneDelegate.swift
//  test
//
//  Created by Muhammad Suleman on 4/29/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        let window = UIWindow(windowScene: scene as! UIWindowScene)
        var initialVC = UIViewController()
        
        //
        
        var isLogin = false
        if let data = UserDefaults.standard.object(forKey: "loggedIn") as? Data,
           let user = try? JSONDecoder().decode(UserModel.self, from: data) {
            if user.isLoggedIn {
                isLogin = true
            } else { isLogin = false }
        }
        
        if isLogin {
            let storyboard = UIStoryboard(name: "MainView", bundle: nil)
            initialVC = storyboard.instantiateViewController(withIdentifier: "HomeView")
        }else{
            let storyboard = UIStoryboard(name: "AuthView", bundle: nil)
            initialVC = storyboard.instantiateViewController(withIdentifier: "LoginView")
        }
        
        window.rootViewController = UINavigationController(rootViewController: initialVC)
        self.window = window
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) { }

    func sceneDidBecomeActive(_ scene: UIScene) { }

    func sceneWillResignActive(_ scene: UIScene) { }

    func sceneWillEnterForeground(_ scene: UIScene) { }

    func sceneDidEnterBackground(_ scene: UIScene) { }


}
