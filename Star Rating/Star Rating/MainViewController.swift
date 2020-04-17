//
//  MainViewController.swift
//  Star Rating
//
//  Created by Jarren Campos on 4/16/20.
//  Copyright © 2020 Jarren Campos. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var customControl = CustomControl()
    var pluralHolder: String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        pluralFinder()
        self.title = "User Rating: \(customControl.value) star\(pluralHolder)"
        // Do any additional setup after loading the view.
    }

    @IBAction func updateRating(_ ratingControl: CustomControl) {
        
    }
    
    func pluralFinder() {
        if customControl.value >= 1 {
            pluralHolder = ""
        } else {
            pluralHolder = "s"
        }
    }
}

