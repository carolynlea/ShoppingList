//
//  ListViewController.swift
//  Shopping List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import UIKit

protocol ListViewControllerDelegate: class
{
    func itemWasSelected(shoppingItem: ShoppingItem)
}

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!
    weak var delegate: ListViewControllerDelegate?
    
    var itemController = ItemController()
    
    override func viewWillAppear(_ animated: Bool)
    {
        tableView.reloadData()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(loadList), name: NSNotification.Name(rawValue: "load"), object: nil)
    }
    
    @objc func loadList(notification: NSNotification){
        
        self.tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return itemController.shoppingItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        
        let shoppingItem = itemController.shoppingItems[indexPath.row]
        
        cell.textLabel?.text = shoppingItem.shoppingItem
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let shoppingItem = itemController.shoppingItems[indexPath.row]
        delegate?.itemWasSelected(shoppingItem: shoppingItem)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == .delete
        {
            let shoppingItem = itemController.shoppingItems[indexPath.row]
            itemController.deleteShoppingItem(shoppingItem: shoppingItem)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}
