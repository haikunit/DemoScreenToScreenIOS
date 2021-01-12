//
//  YellowViewController.swift
//  AutoLayoutExample
//
//  Created by minerva on 12/23/20.
//  Copyright © 2020 minerva. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnPrevious(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    @IBAction func btnRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBAction func btnView(_ sender: Any) {
        
        let greenController = self.navigationController?.viewControllers[1] as! GreenViewController
        
        greenController.hoTen = "HAHAHA"
        
        self.navigationController?.popToViewController(greenController, animated: true)
    }
    
    
    @IBAction func btnGotoList(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let screenList = sb.instantiateViewController(withIdentifier: "List") as! ListViewController
        self.navigationController?.pushViewController(screenList, animated: true)
        
    }
    
    
}
