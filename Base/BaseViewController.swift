//
//  BaseViewController.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/22/24.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
//        self.navigationController?.navigationBar.tintColor = .white
//        self.navigationController?.navigationBar.topItem?.title = ""

        configureHierarchy()
        configureLayout()
        configureView()
    }
    
    func configureHierarchy() {
        
    }
    
    func configureLayout() {
        
    }
    
    func configureView() {
        
    }

//    func showAlert(title: String, message: String, btnTitle: String, complectionHandler: @escaping () -> Void) {
//        
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        
//        let action = UIAlertAction(title: btnTitle, style: .default) { _ in
//            complectionHandler()
//        }
//        
//        let cancel = UIAlertAction(title: "취소", style: .cancel)
//        
//        alert.addAction(action)
//        alert.addAction(cancel)
//        
//        present(alert, animated: true)
//    }
//    
//    func showToast(message: String) {
//        var style = ToastStyle()
//        style.backgroundColor = .white
//        style.messageColor = .black
//        self.view.makeToast(message, duration: 2.0, position: .center, style: style)
//    }
    
}
