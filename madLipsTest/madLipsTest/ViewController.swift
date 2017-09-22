//
//  ViewController.swift
//  madLipsTest
//
//  Created by Liseth Cardozo Sejas on 9/21/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UserInputDelegate  {
    
    @IBOutlet weak var shotLabel: UISwitch!

  
    

    
    @IBOutlet weak var sentenceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! SecondViewController
        destination.delegate = self
    }


    func passingInfo(by : SecondViewController, ajd : String?, verb: String?, verb2 : String?, noun : String? ){
        sentenceLabel.text = "I \(noun!) \(ajd!) \(verb!) I know is sound crazy but if you \(verb2!) its ok!!"
        
    }
}

