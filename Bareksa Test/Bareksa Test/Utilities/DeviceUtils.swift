//
//  DeviceUtils.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 27/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import UIKit

struct DeviceUtils {
    static func isIpad() -> Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
}
