//
//  UIFont+Custom.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 30/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import UIKit

struct Montserrat {
    private static let regular = "Montserrat-Regular"
    private static let semiBold = "Montserrat-SemiBold"
    private static let medium = "Montserrat-Medium"
    
    static func regular(withSize size: CGFloat = 14) -> UIFont {
        return UIFont(name: Montserrat.regular, size: size)!
    }
    
    static func semiBold(withSize size: CGFloat = 14) -> UIFont {
        return UIFont(name: Montserrat.semiBold, size: size)!
    }
    
    static func medium(withSize size: CGFloat = 14) -> UIFont {
        return UIFont(name: Montserrat.medium, size: size)!
    }
}
