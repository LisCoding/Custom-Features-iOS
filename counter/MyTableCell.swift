//
//  MyTableCellTableViewCell.swift
//  counter
//
//  Created by Liseth Cardozo Sejas on 9/21/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class MyTableCell : UITableViewCell {

    var delegate : addAndMinusDelegate?
    
    @IBOutlet weak var numberLabel: UILabel!
    

    @IBAction func minusButton(_ sender: UIButton) {
        delegate?.minusNumber(by: self, text: numberLabel.text!)
    }

    @IBAction func plusButton(_ sender: Any) {
        delegate?.addNumber(by: self, text: numberLabel.text! )
    }
    
    
    

}
