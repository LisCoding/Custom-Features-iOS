//
//  ViewController.swift
//  places
//
//  Created by Liseth Cardozo Sejas on 9/21/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonWasPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: sender)
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let destination = segue.destination as! SecondViewController
            destination.buttonLabelValue = (sender as! UIButton).title(for: .normal)
        
    }

}


