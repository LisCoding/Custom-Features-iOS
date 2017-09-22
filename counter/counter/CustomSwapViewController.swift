//
//  CustomSwapViewController.swift
//  counter
//
//  Created by Liseth Cardozo Sejas on 9/21/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class CustomSwapViewController: UITableViewController {

    var subs = ["", "", ""]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = "Hello:"
        cell.detailTextLabel?.text = subs[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt: IndexPath) -> [UITableViewRowAction]? {
     
        
        let world = UITableViewRowAction(style: .normal, title: "world") { action, index in
            print("favorite button tapped")
          
        }
        
        world.backgroundColor = .red
        
        let nemesis = UITableViewRowAction(style: .normal, title: "nemesis") { action, index in
            print("favorite button tapped")
            
        }
        
        nemesis.backgroundColor = .red
        
        let clear = UITableViewRowAction(style: .normal, title: "clear") { action, index in
            print("share button tapped")
        }
        
        clear.backgroundColor = .lightGray
        return [nemesis, world]
    }
}
