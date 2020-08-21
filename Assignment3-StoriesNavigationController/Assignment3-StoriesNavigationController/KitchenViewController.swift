//
//  KitchenViewController.swift
//  Assignment3-StoriesNavigationController
//
//  Created by Tomona Sako on 2020/05/01.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

import UIKit

class KitchenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

            let backbutton = UIBarButtonItem(title: "Back to start", style: UIBarButtonItem.Style.plain, target: self, action: #selector(backToStartAction))
            self.navigationItem.rightBarButtonItem = backbutton
            // Do any additional setup after loading the view.
        }
        @objc func backToStartAction(_ sender: UIBarButtonItem){
            navigationController?.popToRootViewController(animated: true)
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
