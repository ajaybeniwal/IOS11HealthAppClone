//
//  TabViewController.swift
//  IOS11HealthAppClone
//
//  Created by Ajay Singh on 17/9/17.
//  Copyright © 2017 Ajay Singh. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {
    
    override func viewDidLoad() {
        self.tabBar.tintColor = UIColor(hex: "E91E63")
        super.viewDidLoad()
        let v1 = addChildVC(childVc: TodayViewController(), title: "Today", iconImage: "Today")
        let v2 = addChildVC(childVc: HealthDataViewController(), title: "Health Data", iconImage: "HealthData")
        let v3 = addChildVC(childVc: TodayViewController(), title: "Sources", iconImage: "Sources")
        let v4 = addChildVC(childVc: MedicalIdViewController(), title: "MedicalID", iconImage: "MedicalId")
        self.viewControllers = [v1,v2,v3,v4]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    private func addChildVC(childVc:UIViewController , title:String,iconImage:String)->UIViewController{
        childVc.tabBarItem = UITabBarItem.init(title: title, image: UIImage(named: iconImage), selectedImage: UIImage(named: iconImage))
        let navigationController = BaseNavViewController(rootViewController: childVc)
        return navigationController
        
    }
    
}
