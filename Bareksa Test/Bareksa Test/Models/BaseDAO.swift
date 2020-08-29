//
//  BaseDAO.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 27/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import Foundation
import SwiftyJSON

class BaseDAO {
    var success: Bool = false
    var code: Int?
    var message: String?
    
    init(json: JSON? = nil) {
        if let json = json {
            self.success = json["success"].boolValue
            self.code = json["code"].int
            self.message = json["message"].string
        }
    }
    
    func getMessage() -> String {
        return message ?? ""
    }
}
