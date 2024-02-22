//
//  TestView.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/22/24.
//

// View 역할
import UIKit
import Then

final class NumberValidView: BaseView {
    
    let viewModel = NumberViewModel()

    let inputTextField = UITextField().then {
        $0.placeholder = "금액을 입력하세요"
        $0.layer.borderWidth = 1
    }
    
    let resultLabel = UILabel()
    
    override func configureHierarchy() {
        [
            inputTextField,
            resultLabel,
        ].forEach { addSubview($0) }
    }
    
    override func configureLayout() {
        inputTextField.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(20)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).inset(16)
            make.height.equalTo(50)
        }
        
        resultLabel.snp.makeConstraints { make in
            make.top.equalTo(inputTextField.snp.bottom).offset(20)
            make.horizontalEdges.equalTo(inputTextField)
            make.height.equalTo(50)
        }
    }
    
    override func configureView() {
        
        // input 에서 감지하고, 비즈니스 로직을 통해 얻은 결과값을 resultLabel.text 에 넣는다.
        viewModel.outputResult.bind { value in
            self.resultLabel.text = value
        }
        
    }
    
    // inputTextField 의 값을 viewModel의 inputText.text 에 넣어줘서 감지할 수 있게 만든다.
    @objc func inputTextFieldChanged() {
        guard let text = inputTextField.text else { return }
        viewModel.inputText.text = text
        
        print(viewModel.inputText.text)
    }
}
