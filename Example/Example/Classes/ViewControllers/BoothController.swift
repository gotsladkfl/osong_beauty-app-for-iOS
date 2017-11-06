//
//  MainViewController.swift
//  Example
//
//  Created by 조재용 on 2017. 7. 13..
//  Copyright © 2017년 Yalantis. All rights reserved.
//

import Foundation
import UIKit

class BoothController : UIViewController
{

    
    @IBOutlet var banner1View: Banner1View!
 
    @IBOutlet var banner2View: Banner2View!
    
    @IBOutlet var banner3View: Banner3View!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let imageName = ["b1-1","b1-2","b1-3","b1-4","b1-5","b1-6"]
        
        var arrayImages = [UIImage]()
        for i in 0 ... imageName.count-1
        {
            arrayImages.append(UIImage(named: imageName[i])!)
        }
        
        //instance the class BannerView
       
        self.banner1View.createBanner(imagesArray: arrayImages)
        
        let imageName2 = ["b2-1","b2-2","b2-3","b2-4","b2-5","b2-6"]
        
        var arrayImages2 = [UIImage]()
        for i in 0 ... imageName2.count-1
        {
            arrayImages2.append(UIImage(named: imageName2[i])!)
        }
        
        //instance the class BannerView
        
        self.banner2View.createBanner(imagesArray: arrayImages2)
        
        let imageName3 = ["b3-1","b3-2","b3-3","b3-4","b3-5"]
        
        var arrayImages3 = [UIImage]()
        for i in 0 ... imageName3.count-1
        {
            arrayImages3.append(UIImage(named: imageName3[i])!)
        }
        
        //instance the class BannerView
        
        self.banner3View.createBanner(imagesArray: arrayImages3)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    
}
