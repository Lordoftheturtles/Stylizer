//
//  ViewController.swift
//  Stylizer
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
let context = PersistenceServce.context
    var user: [User] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()
        
        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        loginButton.frame.origin.y = 325
        loginButton.frame.origin.x = 101
        view.addSubview(loginButton)
        
        guard let username = Auth.auth().currentUser?.displayName else { return }
        guard let email = Auth.auth().currentUser?.email else { return }
        //loggedInLabel.text = "Logged in as \(username)"
        //usernameLabel.text = "\(username)"
        //emailLabel.text = "\(email)"
            

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animations()
        
        if Auth.auth().currentUser != nil {
            let storyboard = UIStoryboard(name: "", bundle: nil)
            let _ = storyboard.instantiateViewController(withIdentifier: "") as? UINavigationController
            performSegue(withIdentifier: "", sender: nil)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            storyboard.instantiateInitialViewController()
        }
        
    }

    
// Loginviewcontroller

    
    @IBOutlet weak var stylogo: UIImageView!
    @IBOutlet weak var loginLines: UIImageView!
    @IBOutlet weak var blueBox: UIImageView!
    @IBOutlet weak var continueButton: UIButton!
    
    
    @IBOutlet weak var enterEmailText: UITextField!
   
    
    @IBOutlet weak var enterPasswordText: UITextField!
   
    //DISMISS THE KEYBOARD
  

    
    

    
    @IBAction func continueToMain(_ sender: UIButton) {
        // Continues to Main Screen
        performSegue(withIdentifier: "goHome", sender: self)
        print("Going to Home Screen!")
    }
    
    @IBAction func emailButtonTapped(_ sender: Any) {
        
        
        print("Email label began editing")
    }
    
    @IBAction func passwordButtonTapped(_ sender: Any) {
        
        
        print("Password Label began editing")
    }
    
    
    
    
    func animations() {
        //Changes the alpha of the login Screen when displayed
        //Animated the login screen
        UIView.animate(withDuration: 2.5, delay: 2, options: .curveEaseIn, animations:
            {
            self.stylogo.alpha = 1
        
        })
    
        
    UIView.animate(withDuration: 3, delay: 2.4, options: .curveEaseIn, animations:
        {
                
                self.loginLines.alpha = 1
                
    })

                
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseIn, animations:
            {
                self.blueBox.alpha = 1
                
        })
        
        UIView.animate(withDuration: 3, delay: 3, options: .curveEaseIn, animations:
        {
        self.continueButton.alpha = 1
        
        })
        
        UIView.animate(withDuration: 3, delay: 3.1, options: .curveEaseIn, animations:
            {
                self.enterEmailText.alpha = 1
        })
        
        UIView.animate(withDuration: 3, delay: 3.1, options: .curveEaseIn, animations:
            {
                self.enterPasswordText.alpha = 1
        })
        
    
        print("Function is working?")
        
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

