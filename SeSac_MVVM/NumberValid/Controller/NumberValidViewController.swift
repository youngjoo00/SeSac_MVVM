//
//  TestViewController.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/22/24.
//

// Controller 역할
import UIKit

final class NumberValidViewController: BaseViewController {
    
    private let mainView = NumberValidView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.inputTextField.addTarget(mainView, action: #selector(mainView.inputTextFieldChanged), for: .editingChanged)
    }
 
    
}
