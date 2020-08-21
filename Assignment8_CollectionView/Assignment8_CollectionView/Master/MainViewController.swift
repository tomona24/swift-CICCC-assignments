//
//  MainViewController.swift
//  Assignment8_CollectionView
//
//  Created by Tomona Sako on 2020/08/20.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    private var restaurants: [Restaurant] = Restaurant.restaurants()
    private var filteredRestaurants: [Restaurant] = []
    var checked: [String] = []
    let categoryListVC = foodCategoryViewController()
    let foodListVC = foodListViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.fogGray
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = "Restraunt menu"
        navigationController?.navigationBar.barTintColor = UIColor.mainOrange
        
        setupChildren()
    }
    
    func setupChildren() {
        
        foodListVC.restaurants = restaurants
        categoryListVC.restaurants = restaurants
        
        addChild(categoryListVC)
        addChild(foodListVC)
        
        let vStack = VerticalStackView.init(arrangedSubviews:   [categoryListVC.view, foodListVC.view], spacing: 5, alignment: .fill, distribution: .fillEqually)
  
        categoryListVC.didMove(toParent: self)
        foodListVC.didMove(toParent: self)
        
        
        view.addSubview(vStack)
        vStack.anchors(topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingAnchor: view.leadingAnchor, trailingAnchor: view.trailingAnchor, bottomAnchor: view.safeAreaLayoutGuide.bottomAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
    }
    

    @objc func addfilter(_ sender: UIButton) {
        checked.append(sender.titleLabel!.text!)
        var filtered = restaurants.filter { (restaurant) in
            if checked.contains(restaurant.category.rawValue){
                return true
            } else {return false}
        }
        filteredRestaurants.append(contentsOf: filtered)
        sender.backgroundColor = .fogGray
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
