//
//  AddItemTableViewController.swift
//  bucketListTest
//
//  Created by Liseth Cardozo Sejas on 9/21/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    var delegate : addAndCancelDelegate?
    var item : String?
    var indexPath : IndexPath?
    
    @IBOutlet weak var userInputLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userInputLabel.text = item
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
  

    @IBAction func saveButtonWasPressed(_ sender: UIBarButtonItem) {
     
        var userInput  = ""
        if let input = userInputLabel.text {
            userInput = input
        }
        delegate?.addItemtoTheList(by: self, text: userInput, at : indexPath)
        
    }
    
    
    @IBAction func cancelButtonWasPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelItem(by: self)
    }
    
    
    
    
    
    
}
