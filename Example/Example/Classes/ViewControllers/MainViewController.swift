//
//  MainViewController.swift
//  Example
//
//  Created by 조재용 on 2017. 7. 13..
//  Copyright © 2017년 Yalantis. All rights reserved.
//

import Foundation
import UIKit
import YouTubePlayer_Swift

class MainViewController : UIViewController
{
    
    @IBOutlet var conferLabel: UILabel!
    @IBOutlet var galleryLabel: UILabel!
    
    @IBOutlet var enjoyLabel: UILabel!
    @IBOutlet var festivalBtn: UIButton!
    
    

    
    
    @IBOutlet var gallBtn: UIButton!
    @IBOutlet var videoView: YouTubePlayerView!
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var carLabel: UILabel!
    @IBOutlet var buttonLabel: UILabel!
    @IBOutlet weak var bannerView: BannerView!
    @IBOutlet var containerView: UIView!
     
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        let queue = DispatchQueue.global()
        queue.async {
            self.videoView.playerVars = ["playsinline": 1 as AnyObject]
            self.videoView.loadVideoID("dPNn5OC-0bw")
        }
        
       
       
        
        
        festivalBtn.layer.cornerRadius = 10
        festivalBtn.clipsToBounds = true
        gallBtn.layer.cornerRadius = 10
        gallBtn.clipsToBounds = true
        
        label1.font = UIFont.navigationTitleFont()
        label1.font = label1.font.withSize(13)
        label2.font = UIFont.navigationTitleFont()
        label2.font = label2.font.withSize(13)
        conferLabel.font = UIFont.navigationTitleFont()
        conferLabel.font = conferLabel.font.withSize(13)
        enjoyLabel.font = UIFont.navigationTitleFont()
        enjoyLabel.font = enjoyLabel.font.withSize(15)
        buttonLabel.font = UIFont.cellSubtitleFont()
     
        
        
        galleryLabel.font = UIFont.boldSystemFont(ofSize: 20)
        
        
        
     
            
            let imageName = ["banner1","banner2","banner3","banner4"]
            
            var arrayImages = [UIImage]()
            for i in 0 ... imageName.count-1
            {
                arrayImages.append(UIImage(named: imageName[i])!)
            }
            
            //instance the class BannerView
            self.bannerView.createBanner(imagesArray: arrayImages)
            
        
      
        
      
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    
}
