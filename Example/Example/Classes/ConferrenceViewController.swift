//
//  ConferrenceViewController.swift
//  Example
//
//  Created by 조재용 on 2017. 7. 22..
//  Copyright © 2017년 Yalantis. All rights reserved.
//

import Foundation

import UIKit


class ConferrenceViewController : UIViewController{
    
    
    
    @IBAction func backButtonAction(_ sender: Any) {
        print("confer back button tap")
        
        self.presentingViewController?.dismiss(animated: true)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

