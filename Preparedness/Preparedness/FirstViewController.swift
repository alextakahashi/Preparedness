//
//  FirstViewController.swift
//  Preparedness
//
//  Created by Sebastian Wild on 4/12/20.
//  Copyright © 2020 CCDC. All rights reserved.
//

import UIKit
import IGListKit

class FirstViewController: UIViewController, ListAdapterDataSource {

    var viewModels: [ListDiffable] = []
    var collectionView: UICollectionView
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        let layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        setUpViewModels()
    }
    
    override func viewDidLayoutSubviews() {
        super .viewDidLayoutSubviews()
        collectionView.frame = self.view.frame
    }
    
    // MARK - Priate
    
    func setupCollectionView() {
        self.view.addSubview(collectionView)
        collectionView.backgroundColor = UIColor.cyan
        let updater = ListAdapterUpdater()
        let adapter = ListAdapter(updater: updater, viewController: self)
        adapter.collectionView = collectionView
        adapter.dataSource = self
        collectionView.register(HouseholdCollectionVieCell.self, forCellWithReuseIdentifier:"HouseholdCollectionViewCell")
    }
    
    func setUpViewModels() {
        let familyMember = PersonModel(name: "Alex", email: "test@gmail.com", phoneNumber: "1112223333")
        let household: HouseholdModel = HouseholdModel(name: "HouseholdName", familyMembers: [familyMember], pets: nil)
        viewModels = [household]
    }
    
    // MARK - ListAdapterDataSource

    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return viewModels
    }

    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
      if object is HouseholdModel {
        return HouseholdSectionController()
      } else {
        return HouseholdSectionController()
      }
    }

    func emptyView(for listAdapter: ListAdapter) -> UIView? {
      return nil
    }

}

