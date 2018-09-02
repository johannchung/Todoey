//
//  ViewController.swift
//  Todoey
//
//  Created by Johann Chung on 1/9/2018.
//  Copyright © 2018 Johann Chung. All rights reserved.
//

import UIKit

class TodoListVC: UITableViewController {

    let itemArray = ["Find Mike", "Buy Eggos", "Destroy Demogorogon"]
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
    }

    //MARK - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK - TableView Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let cell : UITableViewCell? = tableView.cellForRow(at: indexPath)
        
        if let tempCell = cell {
            if tempCell.accessoryType == .none {
                tempCell.accessoryType = .checkmark
            }
            else{
                tempCell.accessoryType = .none
            }
        }
        else {
            print("Selection error for cell")
        }
        
        print(itemArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
}

