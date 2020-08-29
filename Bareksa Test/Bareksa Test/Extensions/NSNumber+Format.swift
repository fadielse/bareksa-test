//
//  NSNumber+Format.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 30/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import Foundation

extension Int {
    func convertToThousandSeparator() -> String {
        return NSNumber(value: self).toThousandSeparator()
    }
}

extension NSNumber {
    func toThousandSeparator() -> String {
        
        guard let result = DecimalFormat.sharedInstance.string(from: self) else {
            return ""
        }
        return result
    }
}

class DecimalFormat: NumberFormatter {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init() {
        super.init()
        self.numberStyle = .decimal
        self.maximumFractionDigits = 3
        self.minimumFractionDigits = 0
        self.groupingSeparator = "."
        self.decimalSeparator = ","
    }
    
    static let sharedInstance = DecimalFormat()
}
