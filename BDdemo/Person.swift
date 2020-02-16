//
//  Person.swift
//  BDdemo
//
//  Created by Amira Maythe Vasquez on 16/02/2020.
//  Copyright © 2020 desafio. All rights reserved.
//

import Foundation

class Person {

    var name: String = ""
    var idade: Int = 0
    var id: Int = 0

    init(id:Int, name:String, idade:Int)
    {
        self.id = id
        self.name = name
        self.idade = idade
    }
}
