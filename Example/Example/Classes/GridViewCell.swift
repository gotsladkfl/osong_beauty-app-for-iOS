//
//  GridViewCell.swift
//  ElongationPreview
//
//  Created by Abdurahim Jauzee on 20/02/2017.
//  Copyright © 2017 Ramotion. All rights reserved.
//

import UIKit


class GridViewCell: UITableViewCell {
  

    @IBOutlet var introImg: UIImageView!

    @IBOutlet var img1: UIImageView!
    
    @IBOutlet var img2: UIImageView!
    

    @IBOutlet var img3: UIImageView!
    override func awakeFromNib()
    {
      super.awakeFromNib()
    }    
    override func willMove(toSuperview newSuperview: UIView?) {
    super.willMove(toSuperview: newSuperview)
    
    
  }
  
}
