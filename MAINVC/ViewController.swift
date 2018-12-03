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
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    
    
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    //MARK: Button Actions
    
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        print("Forgot Password Button Tapped!")
    }
    @IBAction func loginButtonTapped(_ sender: Any) {
        print("Login Button Tapped!")
    }
    @IBAction func registerButtonTapped(_ sender: Any) {
        print("Register Button Tapped!")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()
        animateLoginScreen()
    }
     
        
  
        
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        hideKeyboard()

        }
    
    func animateLoginScreen() {
        
        UIView.animate(withDuration: 1.5, delay: 0, options: .curveEaseIn, animations: {
            self.stylizerLogo.alpha = 1
        })
        UIView.animate(withDuration: 1.2, delay: 1.5, options: .curveEaseIn, animations: {
            self.loginDetailsBox.alpha = 1
        })
        UIView.animate(withDuration: 1.2, delay: 1.5, options: .curveEaseIn, animations: {
            self.emailAddressTextField.alpha = 1
        })
        UIView.animate(withDuration: 1.2, delay: 1.5, options: .curveEaseIn, animations: {
            self.passwordTextField.alpha = 1
        })
        UIView.animate(withDuration: 1.2, delay: 2.5, options: .curveEaseIn, animations: {
            self.loginIcons.alpha = 1
        })
        UIView.animate(withDuration: 1.2, delay: 3, options: .curveEaseIn, animations: {
            self.forgotPasswordButton.alpha = 1
        })
        UIView.animate(withDuration: 1.2, delay: 3.5, options: .curveEaseIn, animations: {
            self.loginButton.alpha = 1
        })
        UIView.animate(withDuration: 1.2, delay: 3.5, options: .curveEaseIn, animations: {
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

