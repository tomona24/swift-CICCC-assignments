//
//  foodListViewController.swift
//  Assignment8_CollectionView
//
//  Created by Tomona Sako on 2020/08/20.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//
import UIKit

class foodListViewController: UIViewController, UICollectionViewDelegate {
    private var foodListView: UICollectionView!
    var restaurants: [Restaurant] = []
    
    private let restaurantCellId = "restaurantCell"
    

    override func loadView() {
        super.loadView()
        let foodListLayout = UICollectionViewFlowLayout()
        foodListLayout.scrollDirection = .vertical
        foodListLayout.minimumInteritemSpacing = 8
        foodListLayout.minimumLineSpacing = 8
        foodListView = UICollectionView(frame: .zero, collectionViewLayout: foodListLayout)
        view = foodListView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // for example
        view.backgroundColor = UIColor.fogGray
        // collectionView
        foodListView.contentInset = .init(top: 5, left: 0, bottom: 5, right: 0)
        foodListView.register(foodCollectionViewCell.self, forCellWithReuseIdentifier: restaurantCellId)
        foodListView.dataSource = self
        foodListView.delegate = self
    
    }
    
}
extension foodListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: restaurantCellId, for: indexPath) as! foodCollectionViewCell
        let restaurant = restaurants[indexPath.row]
        cell.imageView.image = UIImage(named: restaurant.img)
        cell.nameLabel.text = restaurant.name
        cell.categoryLabel.text = String(restaurant.category.rawValue)
        cell.timeLabel.text = restaurant.time.description
        return cell
    }
    
}

extension foodListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - 2 * 8) / 2.0
        let height = width + 50
        return CGSize(width: width, height: height)
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//      return .init(top: 8 * 2, left: 0, bottom: 8 * 4, right: 0)
//    }
}
