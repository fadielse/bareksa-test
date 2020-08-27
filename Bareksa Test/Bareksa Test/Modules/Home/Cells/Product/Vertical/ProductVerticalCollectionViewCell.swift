//
//  ProductVerticalCollectionViewCell.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 26/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import UIKit

class ProductVerticalCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var labelProductName: UILabel!
    @IBOutlet weak var buttonDetail: UIButton!
    @IBOutlet weak var labelProductDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewContent.layer.setBorders()
        viewContent.layer.setRadius()
    }

}
