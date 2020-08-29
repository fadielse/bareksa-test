//
//  ProductCollectionDataSource.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 27/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import UIKit

class ProductCollectionDataSource: NSObject, UICollectionViewDataSource {
    var data: [Home.InvestmentCategory] = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row % 3 == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductHorizontalCollectionViewCell", for: indexPath) as! ProductHorizontalCollectionViewCell
            if data.indices.contains(indexPath.row) {
                cell.data = data[indexPath.row]
            }
            return cell
        } else {
            if DeviceUtils.isIpad() {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductHorizontalCollectionViewCell", for: indexPath) as! ProductHorizontalCollectionViewCell
                if data.indices.contains(indexPath.row) {
                    cell.data = data[indexPath.row]
                }
                return cell
            } else {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductVerticalCollectionViewCell", for: indexPath) as! ProductVerticalCollectionViewCell
                if data.indices.contains(indexPath.row) {
                    cell.data = data[indexPath.row]
                }
                return cell
            }
        }
    }
}
