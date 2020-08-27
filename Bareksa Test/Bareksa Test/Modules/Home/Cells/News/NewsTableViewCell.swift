//
//  NewsTableViewCell.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 26/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var imageNews: UIImageView!
    @IBOutlet weak var labelNewsTitle: UILabel!
    @IBOutlet weak var labelNewsDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        setupView()
    }
    
    func setupView() {
        imageNews?.layer.setRadius()
    }
}
