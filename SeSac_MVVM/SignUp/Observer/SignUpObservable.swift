//
//  SignUpObservable.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/23/24.
//

final class SignUpObservable {
    
    private var closure: ((String) -> Void)?
    
    var text: String {
        didSet {
            closure?(text)
        }
    }
    
    init(_ text: String) {
        self.text = text
    }
    
    func bind(_ closure: @escaping (String) -> Void) {
        closure(text)
        self.closure = closure
    }
}
