//
//  GridViewCell.swift
//  ElongationPreview
//
//  Created by Abdurahim Jauzee on 20/02/2017.
//  Copyright © 2017 Ramotion. All rights reserved.
//

import UIKit


class HotelGridViewCell: UITableViewCell {
    

    @IBOutlet var hotelMap: MTMapView!

    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        
        
    }
    
}
