//
//  SecondViewController.swift
//  madLipsTest
//
//  Created by Liseth Cardozo Sejas on 9/21/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var delegate : UserInputDelegate?

    @IBOutlet weak var ajjectiveLabel: UITextField!
    @IBOutlet weak var verbLabel: UITextField!
    @IBOutlet weak var Noun: UITextField!
    @IBOutlet weak var verb2Label: UITextField!
   
    
    override func viewDidLoad() {
     
        
        super.viewDidLoad()
        print("Loaded:)")
    }

    @IBAction func submitButton(_ sender: UIButton) {
        delegate?.passingInfo(by: self, ajd: ajjectiveLabel.text, verb: verbLabel.text, verb2: verb2Label.text, noun: Noun.text)
        
        dismiss(animated: true, completion: nil)
    }

}
