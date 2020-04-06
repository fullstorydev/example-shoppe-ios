//
//  Order.swift
//  ios-shoppe-demo
//
//  Created on 3/31/20.
//  Copyright © 2020 FullStory. All rights reserved.
//

import Foundation

class Order {
    var items: [Product] = []
    var date: Date = Date()

    func addProduct(_ productName: String ) {
        items.filter { $0.title == productName }.first?.quantity += 1
    }
}
