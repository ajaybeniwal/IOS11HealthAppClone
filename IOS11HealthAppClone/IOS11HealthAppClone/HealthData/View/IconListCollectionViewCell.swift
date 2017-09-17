//
//  HealthGridCollectionViewCell.swift
//  IOS11HealthAppClone
//
//  Created by Ajay Singh on 17/9/17.
//  Copyright © 2017 Ajay Singh. All rights reserved.
//

import UIKit
import SnapKit

class IconListCollectionViewCell: UICollectionViewCell {
  var title:UILabel = {
        var title = UILabel()
        title.numberOfLines = 1;
        title.textColor = UIColor.black
        title.font = UIFont.systemFont(ofSize: 16)
        return title
    }()
    
    var emptyLabel:UILabel = {
       var emptyLabel = UILabel()
       emptyLabel.backgroundColor = UIColor(hex: "E0E0E0")
       return emptyLabel
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
        self.contentView.addSubview(imageView)
        imageView.snp.makeConstraints { (make) in
            make.height.equalTo(24)
            make.width.equalTo(24)
            make.centerY.equalTo(self.contentView.snp.centerY)
            make.leading.equalTo(self.contentView).offset(15)
        }
        self.contentView.addSubview(title)
        title.snp.makeConstraints { (make) in
            make.leading.equalTo(imageView.snp.trailing).offset(15)
            make.centerY.equalTo(self.contentView.snp.centerY)
        }
        
        self.contentView.addSubview(emptyLabel)
        emptyLabel.snp.makeConstraints { (make) in
           make.height.equalTo(1)
           make.leading.equalTo(self.contentView).offset(15)
           make.trailing.equalTo(self.contentView).offset(0)
           make.bottom.equalTo(self.contentView).offset(0)
        }
        
    }
    func configure(item:HealthDataLineItem)->Void{
        title.text = item.text
        imageView.image = UIImage(named: item.iconName)
    }
    
}

