//
//  SignUpBaseView.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/23/24.
//

import UIKit
import Then

final class SignUpView: BaseView {
    
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
        $0.configureView("이메일 주소")
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
    
    let validLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 15)
        $0.textColor = .systemRed
    }
    
    override func configureHierarchy() {
        [
            titleLabel,
            stackView,
            validLabel,
            signUpBtn,
        ].forEach { addSubview($0) }
        
        [
            emailTextField,
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
        
        validLabel.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.bottom).offset(20)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).inset(16)
            make.height.equalTo(15)
        }
        
        signUpBtn.snp.makeConstraints { make in
            make.top.equalTo(validLabel.snp.bottom).offset(20)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).inset(16)
            make.height.equalTo(50)
        }

    }
    
    override func configureView() {

       
    }
    
}
