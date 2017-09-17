//
//  MedicalIdTableViewCell.swift
//  IOS11HealthAppClone
//
//  Created by Ajay Singh on 18/9/17.
//  Copyright © 2017 Ajay Singh. All rights reserved.
//

import UIKit

class MedicalIdTableViewCell: UITableViewCell {
    var title:UILabel = {
        var title = UILabel()
        title.numberOfLines = 1;
        title.textColor = UIColor.black
        title.numberOfLines = 0
        title.font = UIFont.systemFont(ofSize: 18)
        title.text = "A Medical Id provides medical information about you that may be important in an emergency, like allergies and medical conditions. The Medical ID can be accessed from your emergency dialler without unlocking your phone. "
        return title
    }()
    
    var button:UIButton = {
    var button = UIButton()
    button.layer.cornerRadius = 8
    button.backgroundColor = UIColor(hex: "E91E63")
    button.titleLabel?.textColor = UIColor.white
    button.setTitle("Create Medical Id", for: UIControlState.normal)
    return button
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
    }
    
    func setUp() ->Void{
        self.contentView.addSubview(title)
        title.snp.makeConstraints { (make) in
            make.leading.equalTo(self.contentView).offset(15)
            make.trailing.equalTo(self.contentView).offset(-15)
            make.top.equalTo(self.contentView).offset(10)
        }
        
        self.contentView.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.height.equalTo(60)
            make.leading.equalTo(self.contentView).offset(15)
            make.trailing.equalTo(self.contentView).offset(-15)
            make.top.equalTo(title.snp.bottom).offset(20)
            make.bottom.equalTo(self.contentView).offset(-20)
        }
    }
}
