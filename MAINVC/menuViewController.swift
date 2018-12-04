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
    
}
