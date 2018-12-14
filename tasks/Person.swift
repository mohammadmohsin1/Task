//
//  Person.swift
//  tasks
//
//  Created by RedBeard on 10/12/2018.
//  Copyright © 2018 RedBeard. All rights reserved.
//

import Foundation

class Person {
    var name = ""
    var age: Int = 0
    var address = Address()
    var height: Float = 0.0
    var color = ""
}

class Address {
    var lat: Double = 0.0
    var long: Double = 0.0
    var adress = ""
}
