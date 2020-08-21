//
//  ViewController.swift
//  Assignment7_Animation
//
//  Created by Tomona Sako on 2020/05/24.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let stackView = UIStackView()
    @IBOutlet var navBarView: UIView!
    @IBOutlet var navBarHeight: NSLayoutConstraint!
    @IBOutlet var plusButton: UIButton!
    var toggle: Bool = false
    
    @IBOutlet var tableView: UITableView!
    var foodCellList: [Food] = []
    
    let oreo = Food(name: "Oreos", imgName: "oreos")
    let pizza = Food(name: "Pizza Pockets", imgName: "pizza_pockets")
    let tart = Food(name: "Pop Tarts", imgName: "pop_tarts")
    let posp = Food(name: "Pospsicle", imgName: "popsicle")
    let ramen = Food(name: "Ramen", imgName: "ramen")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
        
    }
    
    func setup(){
        // stackView
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 5
        
        navBarView.addSubview(stackView)
        stackView.isHidden = true
        stackView.matchParent(padding: .init(top: 108, left: 20, bottom: 0, right: 20))
        
        
        let foods = [oreo, pizza, tart, posp, ramen]
        for food in foods {
            let imgBtn = UIButton()
            imgBtn.setImage(UIImage(named: food.imgName), for: .normal)
            imgBtn.setTitle(food.name, for: .normal)
            stackView.addArrangedSubview(imgBtn)
            imgBtn.contentMode = .scaleAspectFit
            imgBtn.clipsToBounds = true
            imgBtn.addTarget(self, action: #selector(onClickButton(_:)), for: .touchUpInside)
            
            
            //TableView
            self.tableView.dataSource = self
            
        }
    }
    
    @objc func onClickButton(_ sender: UIButton) {
        if let title = sender.titleLabel?.text {
            switch title {
            case "Oreos":
                foodCellList.append(oreo)
            case "Pizza Pockets":
                foodCellList.append(pizza)
            case "Pop Tarts":
                foodCellList.append(tart)
            case "Pospsicle":
                foodCellList.append(posp)
            case "Ramen":
                foodCellList.append(ramen)
            default:
                return
            }
            tableView.reloadData()
        }
    }
    
    
    @IBAction func plusIconPressed(_ sender: UIButton) {
        if !toggle {
            navBarHeight.constant = 228
            UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.0, animations:  {
                self.view.layoutIfNeeded()
                self.plusButton.transform = CGAffineTransform(rotationAngle: .pi / 4)
                self.stackView.isHidden = false
            })
        } else {
            navBarHeight.constant = 108
            UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.0, animations:  {
                self.view.layoutIfNeeded()
                self.plusButton.transform = .identity
                self.stackView.isHidden = true
            })
        }
        toggle = !toggle
    }
    
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodCellList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodTableViewCell
        let food = foodCellList[indexPath.row]
        cell.foodNameLabel.text = food.name
        return cell
    }
    
}
