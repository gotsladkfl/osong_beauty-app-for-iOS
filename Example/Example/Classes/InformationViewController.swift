//
//  InformationViewController.swift
//  Example
//
//  Created by 조재용 on 2017. 7. 17..
//  Copyright © 2017년 Yalantis. All rights reserved.
//

import Foundation
import UIKit


class InformationViewController : UIViewController{
    
    
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

