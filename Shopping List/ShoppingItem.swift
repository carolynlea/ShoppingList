//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import Foundation

class ShoppingItem: Equatable
{
    static func == (lhs: ShoppingItem, rhs: ShoppingItem) -> Bool {
        return lhs.shoppingItem == rhs.shoppingItem
    }
    
    var shoppingItem: String
    
    init(shoppingItem: String)
    {
        self.shoppingItem = shoppingItem
    }
}
