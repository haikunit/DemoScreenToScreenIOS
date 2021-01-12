//
//  ListViewController.swift
//  AutoLayoutExample
//
//  Created by minerva on 1/12/21.
//  Copyright © 2021 minerva. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var myTableView: UITableView!
    @IBOutlet var myTableView2: UITableView!
    
    
    
    var mang : [String]!
    var mang2 : [String]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        myTableView2.dataSource = self
        
        mang = ["Viet Nam", "Lao", "Campuchia", "ThaiLan", "China"]
        mang2 = ["Indo", "Myanma", "My"]
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")
        if(tableView.tag == 0){
            cell?.textLabel?.text = mang[indexPath.row]
        }
        if(tableView.tag == 1){
            cell?.textLabel?.text = mang2[indexPath.row]
        }
        
        return cell!
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(tableView.tag == 0){
            return mang.count
        }
        if(tableView.tag == 1){
            return mang2.count
        }
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var temp = ""
        switch section {
        case 0:
            temp = "Country"
        case 1:
            temp = "District"
        case 2:
            temp = "Ward"
        default:
            temp = "Haha"
        }
        return temp
    }

}
