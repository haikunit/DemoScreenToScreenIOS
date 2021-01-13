//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by minerva on 12/17/20.
//  Copyright © 2020 minerva. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage
import KeychainSwift

class ViewController: UIViewController {

    @IBOutlet var tvHoTen: UITextField!
    @IBOutlet var ivTest: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
        ivTest?.af_setImage(withURL: URL(string: "https://vcdn1-vnexpress.vnecdn.net/2019/09/29/2-1569755302.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=eIlnCLgSWVtioKgU4I4VzA")!)
        
        let keyChainSwift = KeychainSwift()
        if let hoTen = keyChainSwift.get("HoTen"){
            print(hoTen)
        }
        if let birthDay = keyChainSwift.get("Birthday"){
            print(birthDay)
        }
        if let person = keyChainSwift.get("Person"){
            let jsonString = person.data(using: .utf8)!
            do{
                let personObject = try JSONDecoder().decode(Person.self, from: jsonString)
                print("Person: ", personObject.hoten + " : " + personObject.birthDay)
            }catch{
                print(error)
            }
        }
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
        var test : String? = nil
        let person = Person(hoten :"Lo Van A", birthDay: test ?? "haha")
        screenGreen.person = person
        
        let keyChainSwift = KeychainSwift()
        
        let encodePerson = try! JSONEncoder().encode(person)
        let personString = String(data: encodePerson, encoding: .utf8)!
        
        keyChainSwift.set(person.hoten, forKey: "HoTen")
        keyChainSwift.set(person.birthDay, forKey: "Birthday")
        keyChainSwift.set(personString, forKey: "Person")
        
        self.navigationController?.pushViewController(screenGreen, animated: true)
        
    }

}

