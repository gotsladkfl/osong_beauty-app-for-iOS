//
//  InformationViewController.swift
//  Example
//
//  Created by 조재용 on 2017. 7. 17..
//  Copyright © 2017년 Yalantis. All rights reserved.
//

import Foundation
import UIKit


class TestViewController : UIViewController{
    
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
        
    }

    
    @IBOutlet var containnerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
       
        let controller = storyboard!.instantiateViewController(withIdentifier: "MainTableViewController")
        addChildViewController(controller)
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        containnerView.addSubview(controller.view)
      
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

