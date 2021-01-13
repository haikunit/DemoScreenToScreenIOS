//
//  Person.swift
//  AutoLayoutExample
//
//  Created by minerva on 12/23/20.
//  Copyright © 2020 minerva. All rights reserved.
//

import Foundation

struct Person : Codable {
    var hoten: String
    var birthDay: String

    init(hoten: String, birthDay: String) {
        self.hoten = hoten
        self.birthDay = birthDay
    }
}
