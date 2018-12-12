//
//  websiteViewController.swift
//  Stylizer
//
//  Created by Bradley Seymour on 13/12/18.
//  Copyright © 2018 StylizerTeam. All rights reserved.
//

import Foundation
import UIKit
import CoreData
import Firebase
import FirebaseAuth
import Stripe
import WebKit

class websiteViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://www.stylizerofficial.com/featured")
        let request = URLRequest(url: url!)
        webView.load(request)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        webAnimation()
        
    }
    
   
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var returnButton: UIButton!
    
    @IBAction func returnButtonTapped(_ sender: Any) {
        let _ = UIStoryboard(name: "Menu", bundle: nil)
        self.performSegue(withIdentifier: "returnSegue2", sender: self)
        print("Return button has been tapped!")
        
    }
    
    
    func webAnimation() {
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseIn, animations: {
            self.webView.alpha = 1
        })
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseIn, animations: {
            self.returnButton.alpha = 1
        })
        
    }
    
    
    
    
}
