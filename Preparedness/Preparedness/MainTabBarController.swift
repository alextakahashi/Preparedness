//
//  MainTabBarController.swift
//  Preparedness
//
//  Created by Sebastian Wild on 4/12/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        let firstViewController = FirstViewController()
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        
        let secondViewController = SecondViewController()
        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        
        viewControllers = [firstViewController, secondViewController]
    }
    
    private func setupNavigationBar() {
        // Source: https://stackoverflow.com/questions/39955353/how-to-add-a-standard-info-button-to-a-navigation-bar-in-ios
        let infoButton = UIButton(type: .infoLight)
        infoButton.addTarget(self, action: #selector(didTapSettingsBarButton), for: .touchUpInside)
        let barButton = UIBarButtonItem(customView: infoButton)
        self.navigationItem.rightBarButtonItem = barButton
    }
    
    @objc private func didTapSettingsBarButton() {
        let vc = SettingsViewController()
        let navController = UINavigationController(rootViewController: vc)
        self.present(navController, animated: true, completion: nil)
    }
}
