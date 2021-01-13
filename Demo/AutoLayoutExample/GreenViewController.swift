//
//  GreenViewController.swift
//  AutoLayoutExample
//
//  Created by minerva on 12/23/20.
//  Copyright © 2020 minerva. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    var person: Person!
    var hoTen: String!
    @IBOutlet weak var edtHotenXanh: UITextField!
    @IBOutlet var tvName: UILabel!
    @IBOutlet var tvBirthDay: UILabel!
    
    var indicator: UIActivityIndicatorView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvName.text = person.hoten
        tvBirthDay.text = person.birthDay
 
        indicator = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.gray)
        indicator?.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        indicator?.center = view.center
        self.view.addSubview(indicator!)
        self.view.bringSubviewToFront(indicator!)
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
        
    }
    
    @IBAction func btnGoToYellow(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let screenYellow = sb.instantiateViewController(withIdentifier: "Yellow") as! YellowViewController
        self.navigationController?.pushViewController(screenYellow, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        edtHotenXanh.text = hoTen
    }
    
    
    @IBAction func btnShowLoading(_ sender: Any) {
        indicator?.startAnimating()
    }
    
    @IBAction func btnHideLoading(_ sender: Any) {
        indicator?.stopAnimating()
    }
    
    
}
