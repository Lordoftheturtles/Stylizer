//
//  menuViewController.swift
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
import WebKit

class menuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()
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
       
        print("Menu is animating!")
    }
    
    
    
    
    
    //MARK: Actions
    
    @IBAction func menuButtonTapped(_ sender: Any) {
        print("Menu Button Tapped, Display Side Bar")
        sliderAnimations()
        sliderFadeIn()
    }
    
    @IBAction func accountButtonTapped(_ sender: Any) {
        animateAccountScreen()
        print("Account Button Tapped, Display Information about account")
        self.productsButton.isHidden = true
        self.subscriptionButton.isHidden = true
        self.contactUsButton.isHidden = true
        self.becomeAffiliateButton.isHidden = true
    }
    
    @IBAction func productsButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Products", bundle: nil)
        storyboard.instantiateInitialViewController()
        self.performSegue(withIdentifier: "productsSegue", sender: self)
        print("Displaying Products in Products Storyboard!")
        
    }
    @IBAction func subscriptionButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Menu", bundle: nil)
        storyboard.instantiateViewController(withIdentifier: "subscribeVC")
        self.performSegue(withIdentifier: "subscribeSegue", sender: self)
        print("Show Subscriptions Webpage")
        
    }
    
    @IBAction func contactUsButtonTapped(_ sender: Any) {
        
        
        print("Go to Contact Us page")
        
    }
    @IBAction func becomeAffiliateButtonTapped(_ sender: Any) {
        print("Go to Affiliate Webpage / LINK")
        
    }
    
    
    //MARK: SLIDER OUTLETS
    
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
    
    //MARK: ACTIONS
    
    @IBAction func websiteButtonTapped(_ sender: Any) {
        // Links to Website
        
        print("Sending User to Website!")
    }
    
    @IBAction func featuredButtonTapped(_ sender: Any) {
        //links to featured on website
        
        print("Sending User to Featured!")
    }
    
    @IBAction func newsButtonTapped(_ sender: Any) {
        print("Sending User to News!")
        //Links to News
    }
    
    @IBAction func productsSliderButtonTapped(_ sender: Any) {
        // Handles Segue to Products
        let storyboard = UIStoryboard(name: "Products", bundle: nil)
        storyboard.instantiateInitialViewController()
        self.performSegue(withIdentifier: "productsSegueSlider", sender: self)
        print("Show Subscriptions Webpage")
    }
    @IBAction func apparelButtonTapped(_ sender: Any) {
        print("Sending User to Apparel!")
    }
    
    @IBAction func affiliateButtonTapped(_ sender: Any) {
        print("Sending User to Afilliate Marketing Set-Up Web Page!")
    }
    
    @IBAction func aboutUsButtonTapped(_ sender: Any) {
    print("Sending User to About-Us page")
    }
    @IBAction func privacyPolicyButtonTapped(_ sender: Any) {
        print("Sending user to Privacy Policy Agreement")
    }
    
    
    
    
    
    
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
    
    //MARK: Account Outlets / Actions
    
    
//Outlets
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userEmailLabel: UILabel!
    
    
    
    @IBOutlet weak var accountView: UIView!
    @IBOutlet weak var accountBD: UIImageView!
    @IBOutlet weak var accountButtonWHITE: UIButton!
    @IBOutlet weak var usernameBox: UIImageView!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var emailBox: UIImageView!
    @IBOutlet weak var midBreaker: UIImageView!
    @IBOutlet weak var ordersText: UIImageView!
    @IBOutlet weak var bottomBreaker: UIImageView!
    @IBOutlet weak var logOutButtonAC: UIButton!
// Actions
    @IBAction func changeButtonTapped(_ sender: Any) {
        
        //MARK: WORK IN PROGRESS
        
        // Add Alert Controller + Actions Handler
//        let customAlertController = UIAlertController(title: "Change your Username!", message: nil, preferredStyle: .alert)
//        let changeUserAction = UIAlertAction(title: "Change Username!", style: .default) {
//            (_) in
//            let userNameTextField = customAlertController.textFields![0] as
//            UITextField
//            let emailUserTextField = customAlertController.textFields![1] as
//            UITextField
//            // Do Something after change
//        }
//    changeUserAction.isEnabled = true
//        customAlertController.addAction(changeUserAction)
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in
//            // Do Something
//        }
//        customAlertController.addAction(cancelAction)
//        // Add Text Fields
//        customAlertController.addTextField { (textField) in
//            textField.placeholder = "Username"
//        }
//        customAlertController.addTextField { (textField) in
//            textField.placeholder = "Email Address"
//        }
//

        
                print("Changing your username!")
    }
    
    @IBAction func logOutButtonACTapped(_ sender: Any) {
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
        
    }
    
    @IBAction func accountButtonWhiteTapped(_ sender: Any) {
        // Animates the Account Screen
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.accountView.alpha = 1
        })
        self.accountButtonWHITE.alpha = 0
        self.accountButtonWHITE.isHidden = true
        self.accountButton.alpha = 1
        self.accountButton.isHidden = false
        self.productsButton.isHidden = false
        self.subscriptionButton.isHidden = false
        self.contactUsButton.isHidden = false
        self.becomeAffiliateButton.isHidden = false
        self.menuButton.isHidden = false
        returnAccountScreen()
        print("Account Screen is animating!")
    }
    
    
    func animateAccountScreen() {
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.userNameLabel.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.userEmailLabel.alpha = 1
        })
        
        self.menuButton.isHidden = true
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.accountBD.alpha = 1
        })
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.accountButton.isHidden = true
            self.accountButtonWHITE.alpha = 1
            self.accountButtonWHITE.isHidden = false
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.usernameBox.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.changeButton.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.emailBox.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.midBreaker.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.ordersText.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.bottomBreaker.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.logOutButtonAC.alpha = 1
        })
    }
    
    func returnAccountScreen() {
        
        
        self.accountView.isHidden = true
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.userNameLabel.alpha = 0
        })
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.userEmailLabel.alpha = 0
        })
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.accountBD.alpha = 0
        })
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.accountButton.isHidden = false
            self.accountButtonWHITE.alpha = 0
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.usernameBox.alpha = 0
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.changeButton.alpha = 0
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.emailBox.alpha = 0
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.midBreaker.alpha = 0
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.ordersText.alpha = 0
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.bottomBreaker.alpha = 0
        })
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseIn, animations: {
            self.logOutButtonAC.alpha = 0
        })
        
        
    }
    
    
}



