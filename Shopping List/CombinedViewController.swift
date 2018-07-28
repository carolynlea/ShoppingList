//
//  CombinedViewController.swift
//  Shopping List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController
{
    var itemController = ItemController()
    var addItemView: AddItemViewController!
    var listView: ListViewController!
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let listTableView = segue.destination as? ListViewController {
            listView = listTableView
            listView.itemController = itemController
        }
        
        if let addView = segue.destination as? AddItemViewController {
            addItemView = addView
            addItemView.itemController = itemController
            
        }
    }
    

}
