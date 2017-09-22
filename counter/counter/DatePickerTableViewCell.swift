//
//  DatePickerTableViewCell.swift
//  counter
//
//  Created by Liseth Cardozo Sejas on 9/21/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class DatePickerTableViewCell: UIViewController {
    
    @IBOutlet weak var dateLabel: UIDatePicker!
    @IBOutlet weak var shortLabel: UILabel!
    @IBOutlet weak var mediumLabel: UILabel!
    


    var dateString : String?
    
    @IBOutlet weak var largeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
//        http://nsdateformatter.com/
        let date = dateLabel.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let dateFormat2 =  DateFormatter()
         dateFormat2.dateFormat = "MMM d, yyyy"
        dateString = dateFormatter.string(from: date as Date)
        let dateMedium = dateFormat2.string(from: date as Date)
        
        let dateFormat3 =  DateFormatter()
        dateFormat3.dateFormat = "MMMM d, yyyy"
        let dateLarge = dateFormat3.string(from: date as Date)

        shortLabel.text = dateString
        mediumLabel.text = dateMedium
        largeLabel.text = dateLarge
        
    }
    
    
    
    @IBAction func datePiker(_ sender: UIDatePicker) {
        
        print("has been touch")
        let date = dateLabel.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let dateFormat2 =  DateFormatter()
        dateFormat2.dateFormat = "MMM d, yyyy"
        dateString = dateFormatter.string(from: date as Date)
        let dateMedium = dateFormat2.string(from: date as Date)
        
        let dateFormat3 =  DateFormatter()
        dateFormat3.dateFormat = "MMMM d, yyyy"
        let dateLarge = dateFormat3.string(from: date as Date)
        
        shortLabel.text = dateString
        mediumLabel.text = dateMedium
        largeLabel.text = dateLarge
        
    }
    

    

}
