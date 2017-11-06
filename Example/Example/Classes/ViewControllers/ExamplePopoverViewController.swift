//
//  ExamplePopoverViewController.swift
//  ColorMatchTabs
//
//  Created by Serhii Butenko on 27/6/16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

import UIKit
import ColorMatchTabs


//pop up controller

class ExamplePopoverViewController: PopoverViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupContentView()
    }
    
    fileprivate func setupContentView() {
        let imageView = UIImageView(image: UIImage(named: "popover_placeholder"))
       
        contentView.addSubview(imageView)
        
       
       
    }
}
