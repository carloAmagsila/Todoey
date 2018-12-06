//
//  ViewController.swift
//  Todoey
//
//  Created by Carlo Amagsila on 6/12/18.
//  Copyright © 2018 Carlo Amagsila. All rights reserved.
//

import UIKit

class TodolistViewController: UITableViewController {
    
    let itemArray = ["Find Jamie", "Buy Suka", "Seek and Destroy"]

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    //MARK - Tableview Datasource Methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
    //MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            
        }
        
        
        
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

