//
//  Observable.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/22/24.
//

import Foundation

class Observable {
    
    private var closure: ((String) -> Void)?
    
    // 텍스트의 변경값을 감지하는게 주 목적
    var text: String {
        didSet {
            closure?(text)
        }
    }
    
    init(_ text: String) {
        self.text = text
    }
    
    func bind(_ closure: @escaping (String) -> Void) {
        
        // 밖에서 받아온 클로저
        closure(text)
        
        // 밖에서 받아온 클로저를 담아준다.
        self.closure = closure
    }
}
