//
//  GridSectionViewController.swift
//  IOS11HealthAppClone
//
//  Created by Ajay Singh on 17/9/17.
//  Copyright © 2017 Ajay Singh. All rights reserved.
//

import UIKit
import IGListKit

final class GridSectionController: ListSectionController {
    
    private var object: GridItem?
    
    override init() {
        super.init()
        self.minimumInteritemSpacing = 8
        self.minimumLineSpacing = 8
        inset = UIEdgeInsets(top: 10, left: 15, bottom: 10, right: 15)
    }
    
    override func numberOfItems() -> Int {
        return object?.itemCount ?? 0
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        var width = collectionContext?.containerSize.width ?? 0
        width = width-30-1*8
        let itemSize = floor(width / 2)
        return CGSize(width: itemSize, height: itemSize)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(of: HealthGridCollectionViewCell.self, for: self, at: index) as? HealthGridCollectionViewCell else {
            fatalError()
        }
        cell.configure(index: index)
        return cell
    }
    
    override func didUpdate(to object: Any) {
        self.object = object as? GridItem
    }
    
}
