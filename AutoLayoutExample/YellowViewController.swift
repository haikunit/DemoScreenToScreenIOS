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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
