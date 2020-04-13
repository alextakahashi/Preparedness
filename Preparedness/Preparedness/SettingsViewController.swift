//
//  SettingsViewController.swift
//  Preparedness
//
//  Created by alextakahashi on 4/12/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super .viewDidLoad()
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        let cancelButton: UIButton
        if #available(iOS 13.0, *) {
            cancelButton = UIButton(type: .close)
        } else {
            cancelButton = UIButton(type: .system)
        }
        cancelButton.addTarget(self, action: #selector(didDismiss), for: .touchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: cancelButton)
    }
    
    @objc private func didDismiss() {
        self.dismiss(animated: true, completion: nil)
    }
}
