//
//  foodCollectionViewCell.swift
//  Assignment8_CollectionView
//
//  Created by Tomona Sako on 2020/08/20.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

import UIKit

class foodCollectionViewCell: UICollectionViewCell {
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.layer.masksToBounds = true
        return iv
    }()
    
    let nameLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    let categoryLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    let timeLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        let vStack = VerticalStackView(arrangedSubviews: [
        categoryLabel,
        nameLabel,
        imageView,
        timeLabel
        ], spacing: 1, alignment: .leading, distribution: .fill)
        contentView.addSubview(vStack)
    
        
        vStack.anchors(topAnchor: contentView.safeAreaLayoutGuide.topAnchor, leadingAnchor: contentView.leadingAnchor, trailingAnchor: contentView.trailingAnchor, bottomAnchor: contentView.safeAreaLayoutGuide.bottomAnchor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
