//
//  menuViewController.swift
//  Stylizer
//
//  Created by Bradley Seymour on 4/12/18.
//  Copyright © 2018 StylizerTeam. All rights reserved.
//

import Foundation
import Foundation
import CoreData
import Firebase
import FirebaseAuth
import FBSDKLoginKit
import FacebookLogin
import Stripe

class menuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        menuAnimations()
        
        }
        
    
    
    //MARK: MENU OUTLETS
    @IBOutlet weak var greyBD: UIImageView!
    @IBOutlet weak var topBarMenu: UIImageView!
    @IBOutlet weak var stylizerLogo: UIImageView!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var productsButton: UIButton!
    @IBOutlet weak var subscriptionButton: UIButton!
    @IBOutlet weak var contactUsButton: UIButton!
    @IBOutlet weak var becomeAffiliateButton: UIButton!
    @IBOutlet weak var logOutButton: UIButton!
    
    func menuAnimations() {
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.greyBD.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.topBarMenu.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.stylizerLogo.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseIn, animations: {
            self.menuButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseIn, animations: {
            self.accountButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseIn, animations: {
            self.productsButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1.4, options: .curveEaseIn, animations: {
            self.subscriptionButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1.6, options: .curveEaseIn, animations: {
            self.contactUsButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 2, options: .curveEaseIn, animations: {
            self.becomeAffiliateButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 2, options: .curveEaseIn, animations: {
            self.logOutButton.alpha = 1
        })
        print("Menu is animating!")
    }
    
    
    
    
    
    //MARK: Actions
    
    @IBAction func menuButtonTapped(_ sender: Any) {
        print("Menu Button Tapped, Display Side Bar")
        sliderAnimations()
        sliderFadeIn()
    }
    
    @IBAction func accountButtonTapped(_ sender: Any) {
        print("Account Button Tapped, Display Information about account")
    }
    
    @IBAction func productsButtonTapped(_ sender: Any) {
        print("Product Button Tapped, link to Products page or display products")
        
    }
    @IBAction func subscriptionButtonTapped(_ sender: Any) {
        print("Show Subscriptions in a tab")
        
    }
    
    @IBAction func contactUsButtonTapped(_ sender: Any) {
        print("Go to Contact Us page")
        
    }
    @IBAction func becomeAffiliateButtonTapped(_ sender: Any) {
        print("Go to Affiliate Webpage / LINK")
        
    }
    
    @IBAction func logOutButtonTapped(_ sender: Any) {
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
        
    }
    
    //MARK: Slider Outlets / Actions
    
    @IBOutlet weak var menuSlider: UIImageView!
    @IBOutlet weak var sliderStyLogo: UIImageView! // x -272 1
    @IBOutlet weak var instaButton: UIButton! // 1.2
    @IBOutlet weak var fbButton: UIButton! // 1.2
    @IBOutlet weak var websiteButton: UIButton! // 1.2
    @IBOutlet weak var featuredSliderButton: UIButton! // 1.4
    @IBOutlet weak var newsButton: UIButton! // 1.4
    @IBOutlet weak var productsSliderButton: UIButton! // 1.4
    @IBOutlet weak var apparelButton: UIButton! // 1.4
    @IBOutlet weak var affiliateProgramSliderButton: UIButton! // 1.4
    @IBOutlet weak var breakerSlider: UIImageView! // 1.5
    @IBOutlet weak var aboutUsSliderButton: UIButton! // 1.6
    @IBOutlet weak var privacyPolicyButton: UIButton! // 1.6
    @IBOutlet weak var menuSliderView: UIView!
    @IBOutlet weak var invisibleBackButton: UIButton!
    
    
    @IBAction func returnSlider(_ sender: Any) {
        print("Return slider button Tapped!")
        // Returns the slider
        UIView.animate(withDuration: 0.1, delay: 0.3, options: .curveEaseOut, animations: {
            self.invisibleBackButton.frame.origin.x += 102
            
        })
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            self.invisibleBackButton.alpha = 0
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.menuSliderView.frame.origin.x -= 280
            
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.menuSlider.frame.origin.x -= 280
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.sliderStyLogo.frame.origin.x -= 280
        })
        // Link Buttons
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.instaButton.frame.origin.x -= 280
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.fbButton.frame.origin.x -= 280
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.websiteButton.frame.origin.x -= 280
        })
        // User buttons
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.featuredSliderButton.frame.origin.x -= 272
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.newsButton.frame.origin.x -= 272
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.productsSliderButton.frame.origin.x -= 272
        })
        
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.apparelButton.frame.origin.x -= 272
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.affiliateProgramSliderButton.frame.origin.x -= 272
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.breakerSlider.frame.origin.x -= 273
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.aboutUsSliderButton.frame.origin.x -= 272
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.privacyPolicyButton.frame.origin.x -= 272
        })
        print("Slider is returning!")
        
    }
    
    
    
    
    func sliderAnimations() {
       
        // Other Objects
        UIView.animate(withDuration: 0.01, delay: 0, options: .curveEaseIn, animations: {
            self.invisibleBackButton.frame.origin.x -= 102
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.menuSliderView.frame.origin.x += 280
            
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.menuSlider.frame.origin.x += 280
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.sliderStyLogo.frame.origin.x += 280
        })
        // Link Buttons
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.instaButton.frame.origin.x += 280
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.fbButton.frame.origin.x += 280
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.websiteButton.frame.origin.x += 280
        })
        // User buttons
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.featuredSliderButton.frame.origin.x += 272
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.newsButton.frame.origin.x += 272
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.productsSliderButton.frame.origin.x += 272
        })
        
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.apparelButton.frame.origin.x += 272
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.affiliateProgramSliderButton.frame.origin.x += 272
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.breakerSlider.frame.origin.x += 273
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.aboutUsSliderButton.frame.origin.x += 272
        })
        UIView.animate(withDuration: 0.8, delay: 0, options: .curveEaseIn, animations: {
            self.privacyPolicyButton.frame.origin.x += 272
        })
        print("Animating the Slider")
    }
    
    
    
    func sliderFadeIn() {
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.sliderStyLogo.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseIn, animations: {
            self.instaButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseIn, animations: {
            self.fbButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseIn, animations: {
            self.websiteButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.menuSlider.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseIn, animations: {
            self.featuredSliderButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseIn, animations: {
            self.newsButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseIn, animations: {
            self.productsSliderButton.alpha = 1
        })
        
        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseIn, animations: {
            self.apparelButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1, options: .curveEaseIn, animations: {
            self.affiliateProgramSliderButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 1.5, options: .curveEaseIn, animations: {
            self.breakerSlider.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 2, options: .curveEaseIn, animations: {
            self.aboutUsSliderButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 2, options: .curveEaseIn, animations: {
            self.privacyPolicyButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseIn, animations: {
            self.invisibleBackButton.alpha = 1
        })
        print("Fading in Slider Animations!")
        
    }
    
    
    
}



