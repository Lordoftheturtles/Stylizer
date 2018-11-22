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


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animations()
        
        
    }
// Loginviewcontroller

    
    @IBOutlet weak var stylogo: UIImageView!
    @IBOutlet weak var loginLines: UIImageView!
    @IBOutlet weak var blueBox: UIImageView!
    @IBOutlet weak var continueButton: UIButton!
    
    
    
    @IBAction func continueToMain(_ sender: UIButton) {
        // Continues to Main Screen
        performSegue(withIdentifier: "goHome", sender: self)
        print("Going to Home Screen!")
        

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
        print("Function is working?")
        
    }
}

