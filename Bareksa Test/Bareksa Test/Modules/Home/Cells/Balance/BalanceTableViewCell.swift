//
//  BalanceTableViewCell.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 26/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import UIKit

class BalanceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelBalance: UILabel!
    @IBOutlet weak var labelBenefit: UILabel!
    @IBOutlet weak var labelBenefitPercentage: UILabel!
    
    var data: Home.Account? {
        didSet {
            updateView()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func updateView() {
        labelBalance.attributedText = data?.getBalanceAttribute()
        labelBenefit.attributedText = data?.getBenefitAmountAttribute()
        labelBenefitPercentage.text = "\(data?.benefitPercentage ?? 0)%"
    }
}
