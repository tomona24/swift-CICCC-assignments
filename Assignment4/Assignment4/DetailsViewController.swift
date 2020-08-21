//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Tomona Sako on 2020/05/03.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    var city: City!
    
    lazy var cityName: UILabel = {  // lazy = it doesn't initialize untile they are called
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.text = self.city.name
        return lb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.navigationItem.title = city.name

        setupLayout()
    }
    
    fileprivate func setupLayout() {
            let labelCountry = UILabel()
            labelCountry.text = "Country"
            labelCountry.font = UIFont(name: "Helvetica Neue", size: 16)

        
            let countryFlag = UILabel()
            countryFlag.text = city.flag
            
            let labelCity = UILabel()
            labelCity.text = "City"
            labelCity.font = UIFont(name: "Helvetica Neue", size: 16)
        
//            let cityName = UILabel()
//            cityName.text = city.name
            cityName.font = UIFont(name: "Helvetica Neue", size: 24)
            
            let labelTemp = UILabel()
            labelTemp.text = "Temperature"
            labelTemp.font = UIFont(name: "Helvetica Neue", size: 16)
        
            let cityTemp = UILabel()
            cityTemp.text = String(city.temp)
            cityTemp.font = UIFont(name: "Helvetica Neue", size: 24)
            
            let labelPrec = UILabel()
            labelPrec.text = "Precipitation"
            labelPrec.font = UIFont(name: "Helvetica Neue", size: 16)
        
            let cityPrec = UILabel()
            cityPrec.text = String(city.precipitation)
            cityPrec.font = UIFont(name: "Helvetica Neue", size: 24)
            
            let labelSummary = UILabel()
            labelSummary.text = "Summary"
            labelSummary.font = UIFont(name: "Helvetica Neue", size: 16)
        
            let citySummary = UILabel()
            citySummary.text = city.summary
            citySummary.font = UIFont(name: "Helvetica Neue", size: 24)
        
        let stackView = UIStackView(arrangedSubviews: [labelCountry, countryFlag, labelCity, cityName, labelTemp, cityTemp, labelPrec, cityPrec, labelSummary, citySummary])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
          stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
          stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
          stackView.widthAnchor.constraint(equalTo: view.widthAnchor),

          ])
        
        
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
