//
//  SignUpViewController.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/22/24.
//

import UIKit

final class SignUpViewController: BaseViewController {
    
    private let viewModel = SignUpViewModel()
    private let mainView = SignUpView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        addTargetEvent()
        
        viewModel.outputValidation.bind { value in
            self.mainView.validLabel.text = value
        }
        
        viewModel.outputValid.bind { value in
            self.mainView.validLabel.textColor = value ? .green : .red
        }
    }

    @objc func emailTextFieldChanged() {
        viewModel.inputEmail.value = mainView.emailTextField.text!
    }
    
    @objc func passwordTextFieldChanged() {
        viewModel.inputPassword.value = mainView.passwordTextField.text!
    }
    
    @objc func didSignUpBtnTapped() {
        // 이메일 유효성 검사가 완료됐다면 성공
        if viewModel.outputValid.value == true {
            self.showToast(message: "회원가입 성공!")
        } else {
            self.showToast(message: "회원가입 실패!")
        }
    }
    
}

extension SignUpViewController {
    
    private func addTargetEvent() {
        mainView.signUpBtn.addTarget(self, action: #selector(didSignUpBtnTapped), for: .touchUpInside)
        mainView.emailTextField.addTarget(self, action: #selector(emailTextFieldChanged), for: .editingChanged)
        mainView.passwordTextField.addTarget(self, action: #selector(passwordTextFieldChanged), for: .editingChanged)
    }
}
