//
//  socialMediaViewController.swift
//  Stylizer
//
//  Created by Bradley Seymour on 13/12/18.
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


class socialMediaViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.facebook.com/StylizerOfficial/")
        let request = URLRequest(url: url!)
        webView.load(request)
        let url2 = URL(string: "https://www.instagram.com/stylizer_official/")
        let request2 = URLRequest(url: url2!)
        webView2.load(request2)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        initialAnimations()
    }
    
    
    @IBOutlet weak var returnButton: UIButton!
    @IBOutlet weak var socialMediaBD: UIImageView!
    @IBOutlet weak var webView2: WKWebView!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var returnButton2: UIButton!
    @IBOutlet weak var instagramButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    
    // returnSocialMediaView
    
    @IBAction func returnSocialMediaView(_ sender: Any) {
    
    UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.webView2.alpha = 0
            self.webView.alpha = 0
            self.returnButton2.alpha = 0
            self.returnButton.frame.origin.y -= 50
    })
        UIView.animate(withDuration: 1, delay: 1.5, options: .curveEaseIn, animations: {
            self.facebookButton.alpha = 1
            self.instagramButton.alpha = 1
            self.socialMediaBD.alpha = 0.85
            self.returnButton.alpha = 1
            self.returnButton2.alpha = 0
          // Return to main button is brought into the frame
        })
        
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseIn, animations: {
            self.returnButton2.frame.origin.y += 50
        })
        
        print("Return to Social Media View Tapped!")
        
    }
    
    @IBAction func returnButtonTapped(_ sender: Any) {
        let _ = UIStoryboard(name: "Menu", bundle: nil)
        self.performSegue(withIdentifier: "backToMenu", sender: self)
        // Sent back to home!
    }
  

    @IBAction func facebookButtonTapped(_ sender: Any) {
        // Handles Facebook Tap
        facebookViewAnimations()
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseIn, animations: {
             self.returnButton2.frame.origin.y -= 50
            print("Return to initial view button flying in!")
            // Brings Return to initial view button into frame
        })
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseIn, animations: {
            self.returnButton.frame.origin.y += 50
        })
       
        print("Facebook Button Tapped")
        
    }
    
    @IBAction func instagramButtonTapped(_ sender: Any) {
        //Handles Instagram Tap
        instagramViewAnimations()
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseIn, animations: {
            self.returnButton2.frame.origin.y -= 50
            
            // Brings the return to initial view button into frame
            print("Return to initial view button flying in!")
        })
    
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseIn, animations: {
            self.returnButton.frame.origin.y += 50
            // Brings the return to menu away!
        })
            
        print("Instagram Button Tapped!")
        
    }
    
    func initialAnimations() {
        // HANDLES THE INITIAL ANIMATIONS
        UIView.animate(withDuration: 2, delay: 2, options: .curveEaseIn, animations: {
            self.facebookButton.alpha = 1
            self.instagramButton.alpha = 1
            self.socialMediaBD.alpha = 0.85
            self.returnButton.alpha = 1
            self.returnButton2.alpha = 0
            
            print("Initializing Animations")
        })
       
    }
    
    func facebookViewAnimations() {
        UIView.animate(withDuration: 2, delay: 2, options: .curveEaseIn, animations: {
            self.webView.alpha = 1
            self.returnButton2.alpha = 1


            
            print("Animating Facebook View!")
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.webView2.alpha = 0
            self.facebookButton.alpha = 0
            self.instagramButton.alpha = 0
            self.socialMediaBD.alpha = 0
            self.returnButton.alpha = 0
            
        })
    }
    
    
    func instagramViewAnimations() {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn,animations: {
            self.webView.alpha = 0
            self.facebookButton.alpha = 0
            self.instagramButton.alpha = 0
            self.socialMediaBD.alpha = 0
            self.returnButton.alpha = 0
    
            
        })
        UIView.animate(withDuration: 2, delay: 2, options: .curveEaseIn, animations: {
            self.webView2.alpha = 1
            self.returnButton2.alpha = 1
        })
       
        print("Animating Instagram View")
    }
    
}
