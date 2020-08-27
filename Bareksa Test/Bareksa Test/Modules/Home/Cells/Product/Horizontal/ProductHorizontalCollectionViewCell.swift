//
//  ProductHorizontalCollectionViewCell.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 26/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import UIKit

class ProductHorizontalCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var imageProduct: UIImageView!
    @IBOutlet weak var labelProductName: UILabel!
    @IBOutlet weak var labelProductDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        viewContent.layer.setRadius()
        viewContent.layer.setBorders()
    }
}
