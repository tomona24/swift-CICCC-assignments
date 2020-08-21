//
//  foodCategoryCollectionViewCell.swift
//  Assignment8_CollectionView
//
//  Created by Tomona Sako on 2020/08/20.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

import UIKit

class foodCategoryCollectionViewCell: UICollectionViewCell {
    
    var categoryButton: UIButton = {
        let btn = UIButton()
        btn.setTitleColor(.brown, for: .normal)
        btn.layer.cornerRadius = 16
        btn.backgroundColor = .white
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    var isChecked = false
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(categoryButton)
        categoryButton.matchParent()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
