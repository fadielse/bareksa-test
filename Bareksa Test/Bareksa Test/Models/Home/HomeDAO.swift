//
//  HomeDAO.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 27/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import Foundation
import SwiftyJSON

class HomeDAO: BaseDAO {
    // TODO: Declare data members
    
    override init(json: JSON?) {
        super.init(json: json)
        guard let json = json else {
            return
        }
        // TODO: Parse Json to data member
    }
}
