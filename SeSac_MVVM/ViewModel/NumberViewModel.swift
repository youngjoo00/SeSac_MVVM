//
//  NumberViewModel.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/22/24.
//

// ViewModel: 비즈니스 로직 역할
import Foundation

class NumberViewModel {
    
    var inputText = Observable("")
    var outputResult = Observable("")
    
    init() {
        // inputText 의 text 를 "" 로 초기화 했으니, "" 라는 string 값을 들고 있어서 호출이 가능하다.
        // value => inputText.text 를 의미함
        inputText.bind { value in
            self.validation(value)
        }
    }
    
    private func validation(_ text: String) {
        
        // 1. 빈 값 확인
        if text.isEmpty {
            outputResult.text = "값을 입력해주세요"
            return
        }
        
        // 2. 문자열 확인
        guard let num = Int(text) else {
            outputResult.text = "숫자만 입력해주세요"
            return
        }
        
        // 3. 숫자 쉼표
        if num > 0, num <= 1000000 {
            let format = NumberFormatter()
            format.numberStyle = .decimal
            
            let result = format.string(for: num)
            
            outputResult.text = result!
        } else {
            outputResult.text = "100만원 이하로 입력해주세요"
        }
    }
}
