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


class ViewController: UIViewController {
let context = PersistenceServce.context
    var user: [User] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()
        
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

    //MARK: LOGIN FUNCTION AUTHORISATION
    // IS THE USER LOGGED IN??
   // if Auth.auth().currentUser != nil {
    //let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //let _ = storyboard.instantiateViewController(withIdentifier: "homeViewController") as? UINavigationController
   // performSegue(withIdentifier: "logInSegue", sender: nil)
    //} else {
   // let storyboard = UIStoryboard(name: "Main", bundle: nil)
   // storyboard.instantiateInitialViewController()
  //  }
    
    
    //CONFIRM BUTTON TAPPED
//    guard let email = emailTextField.text,
//    email != "",
//    let password = passwordTextField.text,
//    password != ""
//    else {
//    AlertController.showCustomAlert(self, title: "Missing information", message: "Please fill out the required fields!")
//    return
//    }
//
//    Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
//    guard error == nil else {
//    AlertController.showCustomAlert(self, title: "Error", message: error!.localizedDescription)
//    return
//    }
//    guard let user = user else { return }
//    print(user.user.email ?? "Missing Email")
//    print(user.user.displayName ?? "Missing Display Name")
//    print(user.user.uid)
//    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//    let _ = storyboard.instantiateViewController(withIdentifier: "homeViewController") as? UINavigationController
//    self.performSegue(withIdentifier: "logInSegue", sender: nil)
//    }
//    )}
    
   
// Loginviewcontroller

    
    @IBOutlet weak var stylogo: UIImageView!
    @IBOutlet weak var loginLines: UIImageView!
    @IBOutlet weak var blueBox: UIImageView!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var orText: UIImageView!
    
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
            self.orText.alpha = 1
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
    //SIGNUP TBA
    //let email = emailTextField.text,
    //email != "",
    //let password = passwordTextField.text,
    //password != ""
    //else {
    //AlertController.showCustomAlert(self, title: "Missing Information", message: "Please fill in the required fields")
    //return
    
   // }
    //Auth.auth().createUser(withEmail: email, password: password, completion: { (user, error) in
    
   // guard error == nil else {
   // AlertController.showCustomAlert(self, title: "Error", message: error!.localizedDescription)
   // return
  //  }
   // guard let user = user else { return }
  //  print(user.user.email ?? "Mising Email")
   // print(user.user.uid)
  //  let changeRequest = user.user.createProfileChangeRequest()
  //  changeRequest.displayName = username
  //  changeRequest.commitChanges(completion: { (error) in
    //guard error == nil else {
    //AlertController.showCustomAlert(self, title: "Error", message: error!.localizedDescription)
    //return
   //}
   // let storyboard = UIStoryboard(name: "Main", bundle: nil)
   // let _ = storyboard.instantiateViewController(withIdentifier: "homeViewController") as? UINavigationController
   // self.performSegue(withIdentifier: "registerSegue", sender: nil)
   // }
   // )  })
    
//}



@IBAction func loginFacebookAction(sender: AnyObject) {//action of the custom button in the storyboard
    let fbLoginManager : FBSDKLoginManager = FBSDKLoginManager()
    fbLoginManager.logIn(withReadPermissions: ["email"], from: self) { (result, error) -> Void in
        if (error == nil){
            let fbloginresult : FBSDKLoginManagerLoginResult = result!
            // if user cancel the login
            if (result?.isCancelled)!{
                return
            }
            if(fbloginresult.grantedPermissions.contains("email"))
            {
                self.getFBUserData()
            }
        }
    }
}
func getFBUserData(){
    if((FBSDKAccessToken.current()) != nil){
        FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "id, name, first_name, last_name, picture.type(large), email"]).start(completionHandler: { (connection, result, error) -> Void in
            if (error == nil){
                //everything works print the user data
                print(result)
            }
        })
    }
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


