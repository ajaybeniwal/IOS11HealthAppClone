//
//  HealthDataViewController.swift
//  IOS11HealthAppClone
//
//  Created by Ajay Singh on 17/9/17.
//  Copyright © 2017 Ajay Singh. All rights reserved.
//

import UIKit
import IGListKit
class HealthDataViewController: UIViewController,UISearchBarDelegate,UISearchControllerDelegate,UISearchResultsUpdating,ListAdapterDataSource {
    
    
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    let data: [Any] = [
        GridItem(color: UIColor(red: 237/255.0, green: 73/255.0, blue: 86/255.0, alpha: 1), itemCount: 4)
    ]
    /* Search Bar delegate methods*/
    func updateSearchResults(for searchController: UISearchController) {
        print("hello")
    }
    
    let searchController:UISearchController = {
        let search = UISearchController(searchResultsController: nil)
        return search
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Health Data"
        searchController.delegate = self;
        self.navigationItem.searchController = searchController
        view.addSubview(collectionView)
        collectionView.backgroundColor = UIColor.white
        adapter.collectionView = collectionView
        adapter.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return data as! [ListDiffable]
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        if object is GridItem {
            return GridSectionController()
        }
        return GridSectionController()
    }
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }

}
