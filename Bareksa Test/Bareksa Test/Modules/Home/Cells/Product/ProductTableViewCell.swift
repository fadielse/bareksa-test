//
//  ProductTableViewCell.swift
//  Bareksa Test
//
//  Created by Fadilah Hasan on 27/08/20.
//  Copyright © 2020 KodingKita. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: IntrinsicCollectionView!
    
    var collectionWidth: CGFloat = 0
    
    let sectionInset: CGFloat = 16.0
    let cellSpacing: CGFloat = 8.0
    let cellHorizontalHeight: CGFloat = 156.0
    let cellVerticalHeight: CGFloat = 290.0
    let collectionDataSource = ProductCollectionDataSource()
    
    var data: [Home.InvestmentCategory] = [] {
        didSet {
            updateView()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        setupView()
    }
    
    private func setupView() {
        collectionView.register(UINib(nibName: "ProductHorizontalCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductHorizontalCollectionViewCell")
        collectionView.register(UINib(nibName: "ProductVerticalCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductVerticalCollectionViewCell")
        collectionView.delegate = self
    }
    
    func updateView() {
        collectionDataSource.data = data
        collectionView.dataSource = collectionDataSource
        collectionView.reloadData()
        self.layoutIfNeeded()
    }
}

extension ProductTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row % 3 == 0 {
            if collectionWidth - (sectionInset * 2) > 0 {
                return CGSize(width: collectionWidth - (sectionInset * 2), height: cellHorizontalHeight)
            }
            return CGSize.zero
        } else {
            if (collectionWidth / 2) - (sectionInset + cellSpacing) > 0 {
                return CGSize(width: (collectionWidth / 2) - (sectionInset + cellSpacing), height: DeviceUtils.isIpad() ? cellHorizontalHeight: cellVerticalHeight)
            }
            return CGSize.zero
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: sectionInset, bottom: 0, right: sectionInset)
    }
}
