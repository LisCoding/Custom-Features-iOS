//
//  SecondViewController.swift
//  places
//
//  Created by Liseth Cardozo Sejas on 9/21/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var buttonLabel: UIButton!
    var buttonLabelValue : String?
    
    @IBAction func button(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       buttonLabel.setTitle(buttonLabelValue, for: .normal)
    }

    

}
