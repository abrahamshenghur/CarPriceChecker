//
//  SearchVC.swift
//  CarPriceChecker
//
//  Created by Abraham on 9/18/20.
//  Copyright © 2020 Abraham Shenghur. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {

    let logoImageView       = UIImageView()
    let vehicleTextField    = CPCTextField()
    let callToActionButton  = CPCButton(backgroundColor: #colorLiteral(red: 0.1196079227, green: 0.5807820431, blue: 0.3278646021, alpha: 1), title: "Get Vehicles")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        configurLogoImageViewe()
        configureVehicleTextField()
        configureCallToActionButton()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    
    private func configurLogoImageViewe() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "cpc-logo")!
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
            ])
    }
    
    
    private func configureVehicleTextField() {
        view.addSubview(vehicleTextField)
        
        NSLayoutConstraint.activate([
            vehicleTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
            vehicleTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            vehicleTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            vehicleTextField.heightAnchor.constraint(equalToConstant: 50
            )])
    }
    
    
    private func configureCallToActionButton() {
        view.addSubview(callToActionButton)
        
        NSLayoutConstraint.activate([
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
}
