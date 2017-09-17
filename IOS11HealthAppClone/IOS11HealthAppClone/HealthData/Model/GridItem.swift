//
//  GridItem.swift
//  IOS11HealthAppClone
//
//  Created by Ajay Singh on 17/9/17.
//  Copyright © 2017 Ajay Singh. All rights reserved.
//

import UIKit
import IGListKit

final class GridItem: NSObject {
    
    let color: UIColor
    let itemCount: Int
    
    init(color: UIColor, itemCount: Int) {
        self.color = color
        self.itemCount = itemCount
    }
    
}

extension GridItem: ListDiffable {
    
    func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return self === object ? true : self.isEqual(object)
    }
    
}
