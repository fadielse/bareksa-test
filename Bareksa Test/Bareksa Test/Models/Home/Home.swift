//
//  Home.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 27/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import Foundation
import SwiftyJSON

class Home {
    var account: Account?
    var investmentCategories: [InvestmentCategory] = []
    var newsList: [News] = []
    
    init?(json: JSON?) {
        guard let json = json else {
            return nil
        }
        self.account = Account(json: json["account"])
        for data in json["investment_categories"].arrayValue {
            if let investmentCategory = InvestmentCategory(json: data) {
                investmentCategories.append(investmentCategory)
            }
        }
        for data in json["news"].arrayValue {
            if let news = News(json: data) {
                newsList.append(news)
            }
        }
    }
    
    class Account {
        var balanceAmount: Int?
        var benefitAmount: Int?
        var benefitPercentage: Double?
        
        init?(json: JSON?) {
            guard let json = json else {
                return nil
            }
            self.balanceAmount = json["balance_amount"].int
            self.benefitAmount = json["benefit_amount"].int
            self.benefitPercentage = json["benefit_percentage"].double
        }
        
        func getBalanceAttribute() -> NSAttributedString {
            let attrString = NSMutableAttributedString(string: "Rp ",
                                                       attributes: [NSAttributedString.Key.font: Montserrat.semiBold(withSize: 20.0)])

            attrString.append(NSMutableAttributedString(string: balanceAmount?.convertToThousandSeparator() ?? "",
                attributes: [NSAttributedString.Key.font: Montserrat.semiBold(withSize: 30.0)]));
            
            return attrString
        }
        
        func getBenefitAmountAttribute() -> NSAttributedString {
            let attrString = NSMutableAttributedString(string: "Rp ",
                                                       attributes: [NSAttributedString.Key.font: Montserrat.regular(withSize: 12.0)])

            attrString.append(NSMutableAttributedString(string: benefitAmount?.convertToThousandSeparator() ?? "",
                attributes: [NSAttributedString.Key.font: Montserrat.semiBold(withSize: 16.0)]));
            
            return attrString
        }
    }
    
    class InvestmentCategory {
        var name: String?
        var desc: String?
        var image: String?
        
        init?(json: JSON?) {
            guard let json = json else {
                return nil
            }
            self.name = json["name"].string
            self.desc = json["desc"].string
            self.image = json["image"].string
        }
    }
    
    class News {
        var title: String?
        var releaseDate: String?
        var image: String?
        
        init?(json: JSON?) {
            guard let json = json else {
                return nil
            }
            self.title = json["title"].string
            self.releaseDate = json["release_date"].string
            self.image = json["image"].string
        }
    }
}
