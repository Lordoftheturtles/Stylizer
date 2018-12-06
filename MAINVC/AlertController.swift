//
//  AlertController.swift
//  Stylizer
//
//  Created by Bradley Seymour on 5/12/18.
//  Copyright © 2018 StylizerTeam. All rights reserved.
//

import Foundation
import Firebase
import UIKit

class AlertController {
    
    static func showCustomAlert(_ inViewController: UIViewController, title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alert.addAction(action)
        inViewController.present(alert, animated: true, completion: nil)
    }
}
