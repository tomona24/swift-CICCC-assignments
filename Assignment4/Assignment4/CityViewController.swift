//
//  ViewController.swift
//  Assignment3
//
//  Created by Derrick Park on 2018-10-04.
//  Copyright © 2018 Derrick Park. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {

	var city: City!

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

		let cityLabel = UILabel(frame: CGRect(x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 - 200, width: 300, height: 50))
		cityLabel.text = city.name
		cityLabel.textAlignment = .center
		cityLabel.font = UIFont(name: "Helvetica Neue", size: 50)
		
		let butt = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 25, width: 200, height: 50))
		butt.backgroundColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
		butt.setTitle("See Details...", for: .normal)
		butt.layer.cornerRadius = 10.0
		butt.addTarget(self, action: #selector(showWeatherDetails), for: .touchUpInside)
		view.addSubview(cityLabel)
		view.addSubview(butt)
	}
  
  @objc private func showWeatherDetails() {
    let wetherDetail = DetailsViewController()
    wetherDetail.city = self.city
    self.navigationItem.backBarButtonItem = UIBarButtonItem(
        title:  city.country,
        style:  .plain,
        target: nil,
        action: nil
    )
    
    self.navigationController?.pushViewController(wetherDetail, animated: true)
    
  }
}

