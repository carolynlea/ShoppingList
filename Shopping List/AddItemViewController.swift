//
//  AddItemViewController.swift
//  Shopping List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController
{

    @IBOutlet weak var addItemTextfield: UITextField!
    
    var itemController = ItemController()
    
    
    @IBAction func save(_ sender: Any)
    {
        guard let shoppingItem = addItemTextfield.text else {return}
        itemController.createShoppingItem(shoppingItem: shoppingItem)
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue:"load"), object: nil)
        
        addItemTextfield.text = ""
        addItemTextfield.resignFirstResponder()
        
        
    }
    

    

}
