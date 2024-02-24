//
//  SignUpViewModel.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/23/24.
//

import Foundation

final class SignUpViewModel {
    
    var inputEmail = Observable("")
    var inputPassword = Observable("")
    
    var outputValidation = Observable("")
    var outputValid = Observable(false)
    
    init() {
        inputEmail.bind { value in
            self.validation(email: value, password: self.inputPassword.value)
        }
        
        inputPassword.bind { value in
            self.validation(email: self.inputEmail.value, password: value)
        }
    }
    
    private func validation(email: String, password: String) {
        
        guard email.isValidEmail() else {
            self.outputValidation.value = "유효한 이메일 형식이 아닙니다."
            self.outputValid.value = false
            return
        }
        
        guard password.count >= 6 else {
            self.outputValidation.value = "비밀번호는 6자 이상이어야 합니다."
            self.outputValid.value = false
            return
        }
        
        self.outputValidation.value = "모든 조건이 만족합니다!"
        self.outputValid.value = true
    }
    
}
