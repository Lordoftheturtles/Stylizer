//
//  subscribeViewController.swift
//  Stylizer
//
//  Created by Bradley Seymour on 10/12/18.
//  Copyright © 2018 StylizerTeam. All rights reserved.
//

import Foundation
import CoreData
import Firebase
import FirebaseAuth
import FBSDKLoginKit
import FacebookLogin
import Stripe
import WebKit



class subscribeViewController: UIViewController {
    
    
    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Requests Websites URL and Presents to the view controller
        let url = URL(string: "http://www.stylizerofficial.com/subscribe")
        let request = URLRequest(url: url!)
       webView.load(request)
        print("Website is loading!")
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        subscribeViewAnimations()
    }
    
    // Outlets
    @IBOutlet weak var returnToMenu2: UIButton!
    
    //Return Button Actions
    
    @IBAction func returnButtonTapped(_ sender: Any) {
    self.performSegue(withIdentifier: "returnToMenu2", sender: self)
        print("Returning the User to Menu!")
        
    }
    
    func subscribeViewAnimations() {
        // Handles Subscribe View Animations on Startup
        UIView.animate(withDuration: 2.5, delay: 0, options: .curveEaseIn , animations: {
            self.returnToMenu2.alpha = 1
            self.webView.alpha = 1
            print("Animating Subscribe View")
        })
        
    }
    
    
}



