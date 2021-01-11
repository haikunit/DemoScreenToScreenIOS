//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by minerva on 12/17/20.
//  Copyright © 2020 minerva. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet var tvHoTen: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
           print("viewDidAppear")
       }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    @IBAction func btnGotoGreen(_ sender: UIButton) {
        //StoryBoard
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        //Tao man hinh moi
        let screenGreen = sb.instantiateViewController(withIdentifier: "Green") as! GreenViewController
        screenGreen.hoTen = tvHoTen.text
        let person = Person(hoten :"Lo Van A", birthDay: "20/12/2020")
        screenGreen.person = person
        self.navigationController?.pushViewController(screenGreen, animated: true)
        
    }

}

