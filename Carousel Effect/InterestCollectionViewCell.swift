//
//  InterestCollectionViewCell.swift
//  Carousel Effect
//
//  Created by Lightwing Ng on 2018/6/15.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {
    var interest: Interest! {
        didSet {
            updateUI()
        }
    }
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var interestTitleLabel: UILabel!
    
    fileprivate func updateUI() {
        interestTitleLabel?.text! = interest.title
        featuredImageView?.image! = interest.featuredImage
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 5.00
        self.clipsToBounds = true
    }
}
