//
//  ViewController.swift
//  GigleeLayout
//
//  Created by Muhammad Suleman on 4/28/23.
//

import UIKit

class MyView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemRed
    }
    required init?(coder: NSCoder) {
        fatalError ()
    }
}

class ViewController: UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
    let myView = MyView()
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .systemBlue
        
//        view.addSubview(myView)
//        myView.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            myView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            myView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//        ])
        
    }
    
    @IBAction func loginBtnTapped() {
        
        print("\nEmail -> \(email.text)")
        print("Passwordd -> \(password.text)")
    }
    
    @IBAction func registerBtnTapped() { }
    
    @IBAction func forgotPaassBtnTapped() { }
    
}

