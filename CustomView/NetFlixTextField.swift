//
//  NetFlixTextField.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/23/24.
//

import UIKit

class NetFlixTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension NetFlixTextField {
    
    func configureView(_ placeholder: String) {
        backgroundColor = .darkGray
        textColor = .white
        textAlignment = .center
        layer.cornerRadius = 8
        let placeholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        attributedPlaceholder = placeholder
    }
}
