//
//  TabBarController.swift
//  SeSac_MVVM
//
//  Created by youngjoo on 2/22/24.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstTab = UINavigationController(rootViewController: TestViewController())
        let firstTabBarItem = UITabBarItem(title: "Test", image: UIImage(systemName: "house"), tag: 0)
        firstTab.tabBarItem = firstTabBarItem
        
        let secondTab = UINavigationController(rootViewController: SignUpViewController())
        let secondTabBarItem = UITabBarItem(title: "회원가입", image: UIImage(systemName: "person"), tag: 1)
        secondTab.tabBarItem = secondTabBarItem
        
//        let thirdTab = UINavigationController(rootViewController: SettingViewController())
//        let thirdTabBarItem = UITabBarItem(title: "설정", image: UIImage(systemName: "person"), tag: 2)
//        thirdTab.tabBarItem = thirdTabBarItem
//        
        self.viewControllers = [firstTab, secondTab]
    }

}
