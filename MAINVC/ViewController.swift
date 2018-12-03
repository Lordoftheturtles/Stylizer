//
//  ViewController.swift
//  StylizerhomeVIewController
//
//  Created by Brad Seymour on 22/11/18.
//  Copyright © 2018 StylizerTeam. All rights reserved.
//

import UIKit
import Foundation
import CoreData
import Firebase
import FirebaseAuth
import FBSDKLoginKit
import FacebookLogin
import Stripe


class ViewController: UIViewController {

    var user: [User] = []

    @IBOutlet weak var stylizerLogo: UIImageView!
    @IBOutlet weak var loginDetailsBox: UIImageView!
    @IBOutlet weak var loginIcons: UIImageView!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    
    
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    //MARK: Button Actions
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        print("Forgot Password Button Tapped!")
        performSegue(withIdentifier: "forgotPWSegue", sender: self)
    }
    @IBAction func loginButtonTapped(_ sender: Any) {
        print("Login Button Tapped!")
    }
    @IBAction func registerButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "registerSegue", sender: self)
        print("Register Button Tapped!")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()
        
    }
     
        
  
        
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        hideKeyboard()
        animateLoginScreen()

        }
    
    func animateLoginScreen() {
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.stylizerLogo.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1.2, options: .curveEaseIn, animations: {
            self.loginDetailsBox.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1.2, options: .curveEaseIn, animations: {
            self.emailAddressTextField.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1.2, options: .curveEaseIn, animations: {
            self.passwordTextField.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 2, options: .curveEaseIn, animations: {
            self.loginIcons.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 2.5, options: .curveEaseIn, animations: {
            self.forgotPasswordButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 2.7, options: .curveEaseIn, animations: {
            self.loginButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 2.7, options: .curveEaseIn, animations: {
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

