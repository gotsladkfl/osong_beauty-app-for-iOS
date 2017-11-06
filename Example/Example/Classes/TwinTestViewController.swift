//
//  GalleryViewController.swift
//  Example
//
//  Created by 조재용 on 2017. 7. 21..
//  Copyright © 2017년 Yalantis. All rights reserved.
//

import Foundation
import Twinkle
class TwinTestViewController : UIViewController{

    
    @IBOutlet var twin1Image: UIImageView!

    @IBOutlet var twin2Image: UIImageView!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // using the UIView extension
        
       twin1Image.twinkle()
        twin2Image.twinkle()

        delay(0.50) {
 
            self.twin1Image.twinkle()
            self.twin2Image.twinkle()
            
            let storyboard: UIStoryboard = self.storyboard!
            let nextView = storyboard.instantiateViewController(withIdentifier: "ExampleViewContoller")
            let navi = UINavigationController(rootViewController: nextView)
           
            self.present(navi, animated: true, completion: nil)
            
        
        }

    }
    
    public func delay(_ delay:Double, closure:@escaping ()->()) {
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

