//
//  ProductVerticalCollectionViewCell.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 26/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import SDWebImageSVGCoder
import UIKit

class ProductVerticalCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var imageProduct: UIImageView!
    @IBOutlet weak var labelProductName: UILabel!
    @IBOutlet weak var buttonDetail: UIButton!
    @IBOutlet weak var labelProductDescription: UILabel!
    
    var data: Home.InvestmentCategory? {
        didSet {
            updateView()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewContent.layer.setBorders()
        viewContent.layer.setRadius()
    }

    func updateView() {
        imageProduct.sd_setImage(with: URL(string: data?.image ?? ""), completed: nil)
        labelProductName.text = data?.name
        labelProductDescription.text = data?.desc
    }
}
