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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvName.text = person.hoten
        tvBirthDay.text = person.birthDay
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnGoToYellow(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let screenYellow = sb.instantiateViewController(withIdentifier: "Yellow") as! YellowViewController
        self.navigationController?.pushViewController(screenYellow, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        edtHotenXanh.text = hoTen
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
