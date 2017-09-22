//
//  ViewController.swift
//  counter
//
//  Created by Liseth Cardozo Sejas on 9/21/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, addAndMinusDelegate {
    let numbers = ["1", "100", "200", "300", "10000", "30000"]
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    var total = 0

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableCell
        cell.numberLabel.text = numbers[indexPath.row]
        cell.delegate = self
        return cell
    }
    
    func addNumber(by : MyTableCell, text : String) {
        total += Int(text)!
        totalLabel.text = "total \(total)"
        
        
    }
    func minusNumber(by : MyTableCell, text : String) {
        total -= Int(text)!
        totalLabel.text = "total \(total)"
        
    }
    
    @IBAction func switchButton(_ sender: UISwitch) {
        print("iam off")
        if sender.isOn {
            messageLabel.isHidden = false
            messageLabel.isHighlighted = true
        } else {
            messageLabel.isHidden = true
            messageLabel.isHighlighted = false
        }
    }
    
    
    
}

