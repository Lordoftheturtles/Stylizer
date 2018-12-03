//
//  ViewController.swift
//  StylizerhomeVIewController
//
//  Created by Brad Seymour on 22/11/18.
//  Copyright © 2018 StylizerTeam. All rights reserved.
//

import UIKit
import CoreData
import Firebase
import FirebaseAuth
import FBSDKLoginKit
import FacebookLogin

class ViewController: UIViewController {

    var user: [User] = []

    @IBOutlet weak var stylizerLogo: UIImageView!
    @IBOutlet weak var loginDetailsBox: UIImageView!
    @IBOutlet weak var loginIcons: UIImageView!
    @IBOutlet weak var forgotPasswordButton: UIButton! // 2
    @IBOutlet weak var loginButton: UIButton! // 3
    @IBOutlet weak var registerButton: UIButton! //3
    
    
    
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dismissKeyboard()
        animateLoginScreen()
    }
     
        
  
        
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        }
    
    func animateLoginScreen() {
        
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseIn, animations: {
            self.stylizerLogo.alpha = 1
        })
        UIView.animate(withDuration: 2, delay: 1.5, options: .curveEaseIn, animations: {
            self.loginDetailsBox.alpha = 1
        })
        UIView.animate(withDuration: 2, delay: 1.5, options: .curveEaseIn, animations: {
            self.emailAddressTextField.alpha = 1
        })
        UIView.animate(withDuration: 2, delay: 1.5, options: .curveEaseIn, animations: {
            self.passwordTextField.alpha = 1
        })
        UIView.animate(withDuration: 2, delay: 2.5, options: .curveEaseIn, animations: {
            self.loginIcons.alpha = 1
        })
        UIView.animate(withDuration: 2, delay: 3, options: .curveEaseIn, animations: {
            self.forgotPasswordButton.alpha = 1
        })
        UIView.animate(withDuration: 2, delay: 3.5, options: .curveEaseIn, animations: {
            self.loginButton.alpha = 1
        })
        UIView.animate(withDuration: 2, delay: 3.5, options: .curveEaseIn, animations: {
            self.registerButton.alpha = 1
        })
        print("Login Screen is animating!")
        
    }
    
}

extension UIViewController {
    func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}

