//
//  SignUpViewModel.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/23/24.
//

import Foundation

final class SignUpViewModel {
    
    var inputText = SignUpObservable("")
    var outputResult = SignUpObservable("")
    
    init() {
        inputText.bind { value in
            self.validation(value)
        }
    }
    
    private func validation(_ text: String) {
        
        if text.isEmpty {
            outputResult.text = "이메일 입력은 필수입니다."
        } else {
            outputResult.text = "일단은 통과"
        }
        
    }
}
