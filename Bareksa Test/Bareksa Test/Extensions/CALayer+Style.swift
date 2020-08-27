//
//  CALayer+Style.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 27/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import UIKit

extension CALayer {
    func setRadius(withPoints points: CGFloat = 4.0) {
        self.cornerRadius = points
    }
    
    func setBorders(withColor color: UIColor? = .lightGray, withThickness thickness: CGFloat? = 1) {
        if let color = color {
            self.borderColor = color.cgColor
        }
        if let thickness = thickness {
            self.borderWidth = thickness
        }
    }
}
