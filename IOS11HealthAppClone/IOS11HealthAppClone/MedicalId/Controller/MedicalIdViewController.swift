//
//  MedicalIdViewController.swift
//  IOS11HealthAppClone
//
//  Created by Ajay Singh on 18/9/17.
//  Copyright © 2017 Ajay Singh. All rights reserved.
//

import UIKit

class MedicalIdViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var tableView:UITableView = {
       var tableView = UITableView()
        tableView.tableFooterView = UIView()
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.separatorStyle = UITableViewCellSeparatorStyle.none
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Medical ID"
        tableView.register(MedicalIdTableViewCell.self, forCellReuseIdentifier: "MedicalIDCell")
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let medicalIdCell = tableView.dequeueReusableCell(withIdentifier: "MedicalIDCell", for: indexPath) as? MedicalIdTableViewCell{
            return medicalIdCell
        }
        else {
            fatalError()
        }
        
    }
    

    

}
