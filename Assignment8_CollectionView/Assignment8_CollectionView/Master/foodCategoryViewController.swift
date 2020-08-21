//
//  foodCategoryViewController.swift
//  Assignment8_CollectionView
//
//  Created by Tomona Sako on 2020/08/20.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

import UIKit

class foodCategoryViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    var cateogryListView: UICollectionView!
    private var categories: Set<String> = []
    var restaurants:[Restaurant] = []
    let categoryCellId = "categoryCell"
    
    override func loadView() {
        super.loadView()
        
        setCategories()
        
        let screenWidh: CGFloat = view.frame.size.width
        let screenHeight: CGFloat = view.frame.size.height
        
        let categoryListLayout = UICollectionViewFlowLayout()
        categoryListLayout.minimumInteritemSpacing = 8
        categoryListLayout.minimumLineSpacing = 8
        categoryListLayout.itemSize = CGSize(width: 100 , height: screenHeight)
        categoryListLayout.scrollDirection = .horizontal
        cateogryListView = UICollectionView(frame: .zero, collectionViewLayout: categoryListLayout)
        view = cateogryListView
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.fogGray

        // collectionView
        cateogryListView.contentInset = .init(top: 5, left: 5, bottom: 5, right: 5)
        cateogryListView.register(foodCategoryCollectionViewCell.self, forCellWithReuseIdentifier: categoryCellId)
        cateogryListView.dataSource = self
        cateogryListView.delegate = self

    }
    
    
    
    private func setCategories() {
        for restaurant in restaurants {
            print(restaurant.name)
            categories.insert(restaurant.category.rawValue)
        }
        categories.insert("Breakfast")
        categories.insert("Lunch")
        categories.insert("Dinner")

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: categoryCellId, for: indexPath) as! foodCategoryCollectionViewCell
    let arr = Array(categories)
        let category = arr[indexPath.row]
        cell.categoryButton.setTitle(category, for: .normal)
        return cell
    }
}
//extension foodCategoryViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let width = 100
//        let height = width - 20
//        return CGSize(width: width, height: height)
//    }
//}
