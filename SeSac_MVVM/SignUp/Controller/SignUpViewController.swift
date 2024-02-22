//
//  SignUpViewController.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/22/24.
//

import UIKit

class SignUpViewController: BaseViewController {
    
    let mainView = SignUpView()
    
    override func loadView() {
        self.view = mainView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
    }
}
