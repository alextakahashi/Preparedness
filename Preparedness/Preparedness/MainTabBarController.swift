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
        
        let firstViewController = FirstViewController()
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        
        let secondViewController = SecondViewController()
        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        
        viewControllers = [firstViewController, secondViewController]
    }
}
