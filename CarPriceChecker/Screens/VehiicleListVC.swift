//
//  VehiicleListVC.swift
//  CarPriceChecker
//
//  Created by Abraham on 9/26/20.
//  Copyright © 2020 Abraham Shenghur. All rights reserved.
//

import UIKit

class VehiicleListVC: UIViewController {
    
    var vehicle: String!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
