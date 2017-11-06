//
//  GalleryViewController.swift
//  Example
//
//  Created by 조재용 on 2017. 7. 21..
//  Copyright © 2017년 Yalantis. All rights reserved.
//

import Foundation

class GalleryViewController : UIViewController{
    
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
        
    }
    
    
    @IBOutlet var containnerView: UIScrollView!
 
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        let controller = storyboard!.instantiateViewController(withIdentifier: "FromLocalViewController")
        addChildViewController(controller)
        //controller.view.translatesAutoresizingMaskIntoConstraints = false
        containnerView.addSubview(controller.view)
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

