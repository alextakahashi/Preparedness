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
    
    private var collectionView: UICollectionView
    
    init() {
        let layout = UICollectionViewFlowLayout()
        self.collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        self.collectionView.backgroundColor = UIColor.red
        super.init(nibName: nil, bundle: nil)
        self.view.addSubview(collectionView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super .viewDidLoad()
        setupNavigationBar()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = self.view.frame
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
