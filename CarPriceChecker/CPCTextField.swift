//
//  CPCTextField.swift
//  CarPriceChecker
//
//  Created by Abraham on 9/19/20.
//  Copyright © 2020 Abraham Shenghur. All rights reserved.
//

import UIKit

class CPCTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius          = 10
        layer.borderWidth           = 2
        layer.borderColor           = UIColor.darkGray.cgColor
        
        textColor                   = .black
        tintColor                   = .black
        textAlignment               = .center
        font                        = UIFont.preferredFont(forTextStyle: .title1)
        adjustsFontSizeToFitWidth   = true
        minimumFontSize             = 12
        
        backgroundColor             = .white
        autocorrectionType          = .no
        
        placeholder                 = "Enter a vehicle"
    }
}
