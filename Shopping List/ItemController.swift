//
//  ItemController.swift
//  Shopping List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import Foundation

class ItemController {
    
    private(set) var shoppingItems: [ShoppingItem] = []
    
    func createShoppingItem(shoppingItem: String)
    {
        let shoppingItem = ShoppingItem(shoppingItem: shoppingItem)
        shoppingItems.append(shoppingItem)
    }
    
    func deleteShoppingItem(shoppingItem: ShoppingItem)
    {
        guard let index = shoppingItems.index(of: shoppingItem) else {return}
        shoppingItems.remove(at: index)
        
    }
    
}


/*private(set) can be read externally (publicaly accessible) but can only be written internally
 
 Some clarification : private in Swift works a little differently - it limits access to property/method to the scope of a file. As long as there is more then one class in a file, they will be able to access all their contents. In order for private "to work", you need to have your classess in separate files.
 
 What's the difference between private setter and readonly property?
 Private setter means the variable can be set inside the class in which it is declared in. It will behave like readonly property outside that class's scope.
 
 Readonly property can only be accessed, not mutated. No exception.
 
 
 xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
 
 shoppingItems.index(of: shoppingItem) can only be used if shoppingItems conforms to Equatable but can also be used if class is inheriting from NSObject which "adopts or conforms to the equatable protocol" a reply states: "inheriting from NSObject is garbage and should be avoided in swift"

 */
