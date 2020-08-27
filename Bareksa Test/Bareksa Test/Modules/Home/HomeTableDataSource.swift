//
//  HomeTableDataSource.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 27/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import UIKit

class HomeTableDataSource: NSObject, UITableViewDataSource {
    enum HomeSection {
        case balance
        case product
        case news
    }
    
    let sections: [HomeSection] = [.balance, .product, .news]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch sections[section] {
        case .balance:
            return 1
        case .product:
            return 1
        case .news:
            return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch sections[indexPath.section] {
        case .balance:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BalanceTableViewCell", for: indexPath) as! BalanceTableViewCell
            return cell
        case .product:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as! ProductTableViewCell
            cell.collectionWidth = tableView.bounds.width
            cell.updateView()
            return cell
        case .news:
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as! NewsTableViewCell
            return cell
        }
    }
}
