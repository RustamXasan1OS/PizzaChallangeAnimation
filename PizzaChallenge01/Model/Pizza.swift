//
//  Pizza.swift
//  PizzaChallenge01
//
//  Created by Rustam Xasan on 26/11/22.
//

import SwiftUI

// Pizza model and sample Pizzas....
struct Pizza: Identifiable,Hashable{
    var id  = UUID().uuidString
    var breadName: String
}

var pizzas: [Pizza] = [

    Pizza(breadName: "Bread_1"),
    Pizza(breadName: "Bread_2"),
    Pizza(breadName: "Bread_3"),
    Pizza(breadName: "Bread_4"),
    Pizza(breadName: "Bread_5"),

]
