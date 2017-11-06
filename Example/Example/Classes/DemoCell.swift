//
//  DemoCell.swift
//  FoldingCell
//
//  Created by Alex K. on 25/12/15.
//  Copyright © 2015 Alex K. All rights reserved.
//

import UIKit
import FoldingCell

class DemoCell: FoldingCell {
    
    @IBOutlet var pageNum: UILabel!
    @IBOutlet var openImage: UIImageView!
    @IBOutlet var closeImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var firstTitleLabel: UILabel!
    @IBOutlet var firstContentLabel: UILabel!
    @IBOutlet var secondTitleLabel: UILabel!
    @IBOutlet var secondContentLabel: UILabel!
    @IBOutlet var thirdTitleLabel: UILabel!
    @IBOutlet var thirdContentLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        foregroundView.layer.cornerRadius = 10
        foregroundView.layer.masksToBounds = true
        super.awakeFromNib()
    }
       override func animationDuration(_ itemIndex: NSInteger, type: FoldingCell.AnimationType) -> TimeInterval {
        let durations = [0.26, 0.2, 0.2]
        return durations[itemIndex]
    }
    
}

// MARK: - Actions ⚡️
extension DemoCell {
    
    @IBAction func buttonHandler(_ sender: AnyObject) {
        print("tap")
    }
    
}
