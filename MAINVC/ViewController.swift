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

    @IBOutlet weak var loginButton : FBSDKLoginButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()
        //self.loginButton.delegate = self
        if (FBSDKAccessToken.current() != nil) {
    // User is logged in, use 'accessToken' here.
        } else {
       // User is logged out (ERROR)
        }
     
        
        
        
        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        loginButton.frame.origin.y = 220
        loginButton.frame.origin.x = 101
        view.addSubview(loginButton)
        loginButton.isHidden = true
        
     
        
        
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
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        print("User Logged In")
        
        if ((error) != nil)
        {
            // Process error
        }
        else if result.isCancelled {
            // Handle cancellations
        }
        else {
            // If you ask for multiple permissions at once, you
            // should check if specific permissions missing
            if result.grantedPermissions.contains("email")
            {
                // Do work
            }
        }
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }

    
    
// Loginviewcontroller

    
    @IBOutlet weak var stylogo: UIImageView!
        @IBOutlet weak var blueBox: UIImageView!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var facebookBackDrop: UIImageView!
    

    
    @IBAction func continueToMain(_ sender: UIButton) {
        // Continues to Main Screen
        performSegue(withIdentifier: "goHome", sender: self)
        print("Going to Home Screen!, Welcome Guest")
    }
//WIP
  //  func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, //error: NSError!) {
     //   if ((error) != nil) {
            // Process error
     //   }
     //   else if result.isCancelled {
            // Handle cancellations
     //   }
      //  else {
            // Navigate to other view
       // }
    
    
    
    func animations() {
        //Changes the alpha of the login Screen when displayed
        //Animated the login screen
        
        UIView.animate(withDuration: 2.5, delay: 2, options: .curveEaseIn, animations:
            {
            self.stylogo.alpha = 1
        
        })
    
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseIn, animations:
            {
                self.blueBox.alpha = 1
                
        })
        
        UIView.animate(withDuration: 3, delay: 3, options: .curveEaseIn, animations:
        {
        self.continueButton.alpha = 1
        
        })
        
        UIView.animate(withDuration: 3, delay: 2, options: .curveEaseIn, animations: {
            self.facebookBackDrop.alpha = 1
        })
        
        UIView.animate(withDuration: 3, delay: 2, options: .curveEaseIn, animations: {
            self.continueButton.alpha = 1
            
        })
        UIView.animate(withDuration: 3, delay: 2, animations: {
       //
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

