//
//  productsViewController.swift
//  Stylizer
//
//  Created by Bradley Seymour on 9/12/18.
//  Copyright © 2018 StylizerTeam. All rights reserved.
//

import Foundation
import UIKit
import CoreData
import Firebase
import FirebaseAuth
import Stripe
import WebKit


class productsViewController: UIViewController {
    
     @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var returnWebView: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()
        
        // Loads the WebView / Website
        let url = URL(string: "https://www.stylizerofficial.com/products")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        productsAnimations()
       
    }
    
    
    @IBAction func returnButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Menu", bundle: nil)
        storyboard.instantiateInitialViewController()
        self.performSegue(withIdentifier: "returnToMenu", sender: self)
        print("Returning User")
    }
    
    
    func productsAnimations() {
        UIView.animate(withDuration: 2.5, delay: 0, options: .curveEaseIn, animations: {
            self.webView.alpha = 1
            self.returnWebView.alpha = 1
        })
        
        
    }
    
}





