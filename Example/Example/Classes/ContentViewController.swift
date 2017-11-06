//
//  ContentViewController.swift
//  pageSample
//
//  Created by woong on 2016. 3. 29..
//  Copyright © 2016년 handstudio. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    

    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var imgageView: UIImageView!
    
    var pageIndex : Int!
    var titleText : String!
    var imageFile : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imgageView.image = UIImage(named: self.imageFile)
        self.labelTitle.text = self.titleText
    }
    
}
