//
//  DetailViewController.swift
//  ElongationPreview
//
//  Created by Abdurahim Jauzee on 14/02/2017.
//  Copyright © 2017 Ramotion. All rights reserved.
//

import UIKit
import ElongationPreview


class DetailViewController: ElongationDetailViewController {
    
    var imgName: String = ""
    var img1Name: String = ""
    var img2Name: String = ""
    var img3Name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .black
        tableView.separatorStyle  = .none
        

        tableView.registerNib(GridViewCell.self)
        
       
    }
    
    func resize2Image(image: UIImage, newWidth: CGFloat) -> UIImage {
        
        let scale = newWidth / image.size.width
        let newHeight = CGFloat(136)
        UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
        
        
        image.draw(in: CGRect(x: 0, y: 0,width: newWidth, height: newHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }

    
    
    func resizeImage(image: UIImage, newWidth: CGFloat) -> UIImage {
        
        let scale = newWidth / image.size.width
        let newHeight = CGFloat(100)
        UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
        
        
        image.draw(in: CGRect(x: 0, y: 0,width: newWidth, height: newHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeue(GridViewCell.self)
        
        cell.introImg.image = resizeImage( image: UIImage(named: self.imgName)! , newWidth: 300)
        cell.img1.image = resize2Image( image: UIImage(named: self.img1Name)! , newWidth: 118)
        cell.img2.image = resize2Image( image: UIImage(named: self.img2Name)! , newWidth: 118)
        cell.img3.image = resize2Image( image: UIImage(named: self.img3Name)! , newWidth: 118)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let appearance = ElongationConfig.shared
        let headerHeight = appearance.topViewHeight + appearance.bottomViewHeight
        let screenHeight = UIScreen.main.bounds.height
        return screenHeight - headerHeight
    }
    
}
