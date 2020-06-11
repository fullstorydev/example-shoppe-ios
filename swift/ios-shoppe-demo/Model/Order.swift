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

    func cartOrderTotal() -> Double {
        var cost = Double()
        items.forEach { (item) in
            cost += item.getTotal()
        }

        return cost
    }

    func orderSummary() -> [String: Any] {
        let sortedItems: [Product] = items.filter { $0.quantity > 0 }
        var orderDict: [String: Any] = [:]

        for item in sortedItems {
            orderDict[item.title] = item.quantity
        }

        return orderDict
    }
}
