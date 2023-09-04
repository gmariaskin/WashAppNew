//
//  Item.swift
//  WashMe
//
//  Created by Gleb on 17.08.2023.
//

import Foundation
import UIKit
import Rswift

struct Item {
    
    var name: String
    var color: String
    var image: UIImage
}

class Category {
    
    var itemsInCategory = [Item]()
    
    init() {
        setup()
    }
    
    func setup() {
        
        let item1 = Item(name: "Gucci", color: "Black", image: UIImage(named: "gucciPants")!)
        let item2 = Item(name: "Prada", color: "Brown", image: UIImage(named: "pradaPants")!)
        let item3 = Item(name: "LV", color: "Blue", image: UIImage(named: "lvPants")!)
        self.itemsInCategory = [item1, item2, item3]
    }
}
