//
//  ViewController.swift
//  ToDoApp
//
//  Created by Aydogdy Shahyrov on 15/08/2018.
//  Copyright © 2018 Aydogdy Shahyrov. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Find Milk", "Buy eggos", "Destroy domogorgon", "Find Milk", "Buy eggos", "Destroy domogorgon", "Find Milk", "Buy eggos", "Destroy domogorgon", "Find Milk", "Buy eggos", "Destroy domogorgon", "Find Milk", "Buy eggos", "Destroy domogorgon", "Find Milk", "Buy eggos", "Destroy domogorgon", "Find Milk", "Buy eggos", "Destroy domogorgon", "Find Milk", "Buy eggos", "Destroy domogorgon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table View Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    // MARK: - Table View Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
           tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
    }

}

