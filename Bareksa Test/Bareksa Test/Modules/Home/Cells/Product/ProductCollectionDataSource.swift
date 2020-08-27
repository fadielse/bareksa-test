//
//  ProductCollectionDataSource.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 27/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import UIKit

class ProductCollectionDataSource: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 1 {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductHorizontalCollectionViewCell", for: indexPath) as? ProductHorizontalCollectionViewCell {
                return cell
            }
        } else {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductVerticalCollectionViewCell", for: indexPath) as? ProductHorizontalCollectionViewCell {
                return cell
            }
        }
        return UICollectionViewCell()
    }
}
