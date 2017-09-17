//
//  HealthDataLineItem.swift
//  IOS11HealthAppClone
//
//  Created by Ajay Singh on 17/9/17.
//  Copyright © 2017 Ajay Singh. All rights reserved.
//

import UIKit
import IGListKit

final class HealthDataLineItem: NSObject {
    
    let text:String
    let iconName:String
    
    init(text: String, iconName: String) {
        self.text = text
        self.iconName = iconName
    }
    
}

extension HealthDataLineItem: ListDiffable {
    
    func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return self === object ? true : self.isEqual(object)
    }
    
}
