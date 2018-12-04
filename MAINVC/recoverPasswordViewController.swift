//
//  recoverPasswordViewController.swift
//  Stylizer
//
//  Created by Bradley Seymour on 4/12/18.
//  Copyright © 2018 StylizerTeam. All rights reserved.
//

import Foundation
import CoreData
import Firebase
import FirebaseAuth
import FBSDKLoginKit
import FacebookLogin
import Stripe
import UIKit

class recoverPasswordVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        recoverPasswordAnimations()
        hideKeyboard()
    }
    //MARK: RecoverPW Outlets / Actions
    
    @IBOutlet weak var stylizerLogo: UIImageView!
    @IBOutlet weak var emailBox: UIImageView!
    @IBOutlet weak var emailIcon: UIImageView!
    @IBOutlet weak var recoverPasswordButton: UIButton!
    @IBOutlet weak var backToLoginButton: UIButton!
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var recoveryMessage: UIImageView!
    
    
    @IBAction func recoverPasswordButtonTapped(_ sender: Any) {
        // What happens after Recover button has been tapped
        guard let email = emailAddressTextField.text,
            email != ""
            else {
                AlertController.showCustomAlert(self, title: "Missing Information", message: "Please fill out the required fields")
                return
        }
        Auth.auth().sendPasswordReset(withEmail: email, completion: nil)
        // Sends the password reset form
        recoveryMessageAnimation()
    }
    
    @IBAction func backToLoginButtonTapped(_ sender: Any) {
        dismiss(animated: false, completion: nil)
        
    }
    
    
    
    func recoveryMessageAnimation() {
        
        UIView.animate(withDuration: 3, delay: 0, options: .curveEaseIn, animations: {
            self.recoveryMessage.alpha = 1
        })
        
            UIView.animate(withDuration: 3, delay: 5, options: .curveEaseOut, animations: {
                self.recoveryMessage.alpha = 0
            })
    }
    
    
    func recoverPasswordAnimations() {
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.stylizerLogo.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.emailBox.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.emailIcon.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0.4, options: .curveEaseIn, animations: {
            self.recoverPasswordButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0.4, options: .curveEaseIn, animations: {
            self.backToLoginButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0.4, options: .curveEaseIn, animations: {
            self.emailAddressTextField.alpha = 1
        })
        print("Recover Password View Controller is animating!")
    }
    
    
}

