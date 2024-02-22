//
//  SignUpBaseView.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/23/24.
//

import UIKit
import Then

final class SignUpView: BaseView {
    
    let viewModel = SignUpViewModel()
    
    var completionSignUp: ((String) -> Void)?
    
    let titleLabel = UILabel().then {
        $0.text = "NETFLIX"
        $0.font = .boldSystemFont(ofSize: 30)
        $0.textColor = .systemRed
    }
    
    private let stackView = UIStackView().then {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.spacing = 16
    }
    
    let emailTextField = NetFlixTextField().then {
        $0.configureView("이메일 주소 또는 전화번호")
    }
    
    let emailReslutLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 15)
        $0.textColor = .systemRed
    }
    
    let passwordTextField = NetFlixTextField().then {
        $0.configureView("비밀번호")
    }
    
    let nicknameTextField = NetFlixTextField().then {
        $0.configureView("닉네임")
    }
    
    let locationTextField = NetFlixTextField().then {
        $0.configureView("위치")
    }
    
    let recomendCodeTextField = NetFlixTextField().then {
        $0.configureView("추천 코드 입력")
    }
    
    let signUpBtn = UIButton().then {
        $0.setTitle("회원가입", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 8
    }
    
    override func configureHierarchy() {
        [
            titleLabel,
            stackView,
            signUpBtn,
        ].forEach { addSubview($0) }
        
        [
            emailTextField,
            emailReslutLabel,
            passwordTextField,
            nicknameTextField,
            locationTextField,
            recomendCodeTextField,
        ].forEach { stackView.addArrangedSubview($0) }
    }
    
    override func configureLayout() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(30)
        }
        
        stackView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        emailTextField.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).inset(16)
            make.height.equalTo(44)
        }
        
        signUpBtn.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).offset(20)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).inset(16)
            make.height.equalTo(50)
        }
    }
    
    override func configureView() {
        
        // 들어오자마자 클로져를 실행시킴
        viewModel.outputResult.bind { value in
            self.emailReslutLabel.text = value
        }
        
    }
    
    @objc func textFieldChanged() {
        viewModel.inputText.text = emailTextField.text!
    }
    
    @objc func didSignUpBtnTapped() {
        // 이메일 유효성 검사가 완료됐다면 성공
        if viewModel.outputResult.text == "일단은 통과" {
            completionSignUp?("회원가입 성공!")
        } else {
            completionSignUp?("회원가입 실패!")
        }
    }
    
}
