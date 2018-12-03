//
//  registerViewController.swift
//  Stylizer
//
//  Created by Bradley Seymour on 3/12/18.
//  Copyright © 2018 StylizerTeam. All rights reserved.
//

import Foundation
import UIKit
import CoreData
import Firebase
import Stripe
import FBSDKLoginKit
import FacebookLogin

class registerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboard()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        hideKeyboard()
        animateRegisterScreen()
        
    }
   
    
    //MARK: OUTLETS
    
    @IBOutlet weak var stylizerLogo: UIImageView! // 1
    @IBOutlet weak var loginDetailsBox: UIImageView! // 1.2
    @IBOutlet weak var loginIcons: UIImageView! // 1.2
    @IBOutlet weak var registerButton: UIButton! // 2
    @IBOutlet weak var backToLoginButton: UIButton! // 2
    @IBOutlet weak var emailAddressTextField: UITextField! // 1.4
    @IBOutlet weak var passwordTextField: UITextField! //1.4
    
    
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        
        print("Attempting to register user!")
        // Performs function of the register button being tapped
        
            guard let email = emailAddressTextField.text,
            email != "",
            let password = passwordTextField.text,
            password != ""
            else {
                AlertController.showCustomAlert(self, title: "Missing Information", message: "Please fill in the required fields")
                return
                
        }
        Auth.auth().createUser(withEmail: email, password: password, completion: { (user, error) in
            
            guard error == nil else {
                AlertController.showCustomAlert(self, title: "Error", message: error!.localizedDescription)
                return
            }
            guard let user = user else { return }
            print(user.user.email ?? "Mising Email")
            print(user.user.uid)
            let changeRequest = user.user.createProfileChangeRequest()
            changeRequest.commitChanges(completion: { (error) in
                guard error == nil else {
                    AlertController.showCustomAlert(self, title: "Error", message: error!.localizedDescription)
                    return
                }
//                let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                let _ = storyboard.instantiateViewController(withIdentifier: "") as? UINavigationController
//                self.performSegue(withIdentifier: "", sender: nil)
            }
            )  })
        
    }
        

        
    
    @IBAction func returnToLoginButtonTapped(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    
    
    
    
    func animateRegisterScreen() {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.stylizerLogo.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseIn, animations: {
            self.loginDetailsBox.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseIn, animations: {
            self.loginIcons.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseIn, animations: {
            self.registerButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseIn, animations: {
            self.backToLoginButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1.4, options: .curveEaseIn, animations: {
            self.emailAddressTextField.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1.4, options: .curveEaseIn, animations: {
            self.passwordTextField.alpha = 1
        })
        print("Animating Register View Controller!")
        
    }
    
    
    
}
