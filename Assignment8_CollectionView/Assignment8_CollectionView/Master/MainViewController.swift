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
    private var filtereRestaurants: [Restaurant] = []
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
        
        var label = UILabel()
        label.text = "aiut"
    
        foodListVC.restaurants = restaurants
        categoryListVC.restaurants = restaurants
        
        addChild(categoryListVC)
        addChild(foodListVC)
        
        let vStack = VerticalStackView.init(arrangedSubviews:   [categoryListVC.view, foodListVC.view], spacing: 5, alignment: .fill, distribution: .fillEqually)
  
        categoryListVC.didMove(toParent: self)
        foodListVC.didMove(toParent: self)
        
        
        view.addSubview(vStack)
        vStack.anchors(topAnchor: view.safeAreaLayoutGuide.topAnchor, leadingAnchor: view.leadingAnchor, trailingAnchor: view.trailingAnchor, bottomAnchor: view.safeAreaLayoutGuide.bottomAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
//        NSLayoutConstraint.activate([
//            categoryListVC.view.heightAnchor.constraint(equalToConstant: 100),
//            categoryListVC.view.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0),
//            categoryListVC.view.heightAnchor.constraint(equalToConstant: 0.0),
//            categoryListVC.view.widthAnchor.constraint(equalTo: categoryListVC.view.widthAnchor, multiplier: 1.0),
//        ])
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
