//
//  SignUpViewController.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/22/24.
//

import UIKit

final class SignUpViewController: BaseViewController {
    
    private let mainView = SignUpView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        mainView.signUpBtn.addTarget(mainView, action: #selector(mainView.didSignUpBtnTapped), for: .touchUpInside)
        mainView.emailTextField.addTarget(mainView, action: #selector(mainView.textFieldChanged), for: .editingChanged)
        
        mainView.completionSignUp = { value in
            self.showToast(message: value)
        }
    }

    
}
