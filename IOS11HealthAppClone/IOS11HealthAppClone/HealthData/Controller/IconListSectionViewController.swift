//
//  GridSectionViewController.swift
//  IOS11HealthAppClone
//
//  Created by Ajay Singh on 17/9/17.
//  Copyright © 2017 Ajay Singh. All rights reserved.
//

import UIKit
import IGListKit

final class IconListSectionViewController: ListSectionController {
    
    private var object: HealthDataLineItem?
    
    override init() {
        super.init()
    }
    
    override func numberOfItems() -> Int {
        return 1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        let width = collectionContext?.containerSize.width ?? 0
        return CGSize(width: width, height: 44)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(of: IconListCollectionViewCell.self, for: self, at: index) as? IconListCollectionViewCell else {
            fatalError()
        }
        cell.configure(item:self.object!)
        return cell
    }
    
    override func didUpdate(to object: Any) {
        self.object = object as? HealthDataLineItem
    }
    
}

