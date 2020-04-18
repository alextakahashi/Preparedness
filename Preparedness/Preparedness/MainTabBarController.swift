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
        
        let homeVC = FirstViewController()
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: #imageLiteral(resourceName: "home.pdf"), tag: 0)
        
        let earthquakeVC = SecondViewController()
        earthquakeVC.tabBarItem = UITabBarItem(title: "Earthquake", image: #imageLiteral(resourceName: "earthquake"), tag: 1)
        
        let fireVC = SecondViewController()
        fireVC.tabBarItem = UITabBarItem(title: "Fire", image: #imageLiteral(resourceName: "fire"), tag: 2)
        
        let heatwaveVC = SecondViewController()
        heatwaveVC.tabBarItem = UITabBarItem(title: "Heatwave", image: #imageLiteral(resourceName: "heat"), tag: 3)
        
        let pandemicVC = SecondViewController()
        pandemicVC.tabBarItem = UITabBarItem(title: "Pandemic", image: #imageLiteral(resourceName: "pandemic"), tag: 4)
        
        viewControllers = [homeVC, earthquakeVC, fireVC, heatwaveVC, pandemicVC]
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
