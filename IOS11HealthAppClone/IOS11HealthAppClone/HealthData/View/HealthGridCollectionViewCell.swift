//
//  HealthGridCollectionViewCell.swift
//  IOS11HealthAppClone
//
//  Created by Ajay Singh on 17/9/17.
//  Copyright © 2017 Ajay Singh. All rights reserved.
//

import UIKit
import SnapKit

class HealthGridCollectionViewCell: UICollectionViewCell {
    var containerView:UIView = {
        let containerView = UIView()
        containerView.layer.cornerRadius = 8
        return containerView
    
    }();
    
    var title:UILabel = {
       var title = UILabel()
        title.numberOfLines = 1;
        title.textColor = UIColor.white
        title.font = UIFont.boldSystemFont(ofSize: 24)
        title.textAlignment = NSTextAlignment.center;
        return title
    }()
    
    var imageView:UIImageView = {
        var imageView = UIImageView()
        return imageView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initializeCollectionViewUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initializeCollectionViewUI()->Void{
        self.contentView.addSubview(containerView);
        containerView.snp.makeConstraints { (make) in
     make.leading.trailing.bottom.top.equalTo(self.contentView)
        }
        
        containerView.addSubview(title)
        title.snp.makeConstraints { (make) in
           make.leading.equalTo(containerView).offset(5)
            make.trailing.equalTo(containerView).offset(-5)
            make.top.equalTo(containerView).offset(10)
        }
        
        self.contentView.addSubview(imageView)
        
        imageView.snp.makeConstraints { (make) in
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.bottom.equalTo(containerView).offset(-10)
            make.trailing.equalTo(containerView).offset(-10)
        }
    }
    
    func configure(index:Int)->Void{
        switch index {
        case 0:
            self.containerView.backgroundColor = UIColor(hex: "FFE082")
            imageView.image = UIImage(named: "Activity")
            title.text = "Activity"
        case 1:
            self.containerView.backgroundColor = UIColor(hex: "80CBC4")
            imageView.image = UIImage(named: "Mindfullness")
            title.text = "Mindfullness"
        case 2:
            self.containerView.backgroundColor = UIColor(hex: "81D4FA")
            imageView.image = UIImage(named: "Nutrition")
            title.text = "Nutrition"
        case 3:
            self.containerView.backgroundColor = UIColor(hex: "9FA8DA")
            imageView.image = UIImage(named: "Sleep")
            title.text = "Sleep"
        default:
            self.containerView.backgroundColor = UIColor.darkGray
        }
    }
}
