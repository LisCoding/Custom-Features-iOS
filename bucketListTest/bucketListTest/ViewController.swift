//
//  ViewController.swift
//  bucketListTest
//
//  Created by Liseth Cardozo Sejas on 9/21/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit
import CoreData

class BucketListViewController: UITableViewController, addAndCancelDelegate {
    var bucketList = [BucketList]()
    let managerObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bucketList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = bucketList[indexPath.row].text!
        return cell
    }
    
    //grab the data
    func fetchData() {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "BucketList")
        
        do {
            let result = try managerObjectContext.fetch(request)
            bucketList = result as! [BucketList]
            
        } catch {
            print("\(error)")
        }
        
    }

    //prepare for Segue! 
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let edit = sender as? NSIndexPath
        
        if edit != nil  {
            let  navigationController = segue.destination as! UINavigationController
            let destination = navigationController.topViewController as!AddItemTableViewController
            destination.delegate = self
            
            let indexPath  = sender as! IndexPath
            destination.item = bucketList[indexPath.row].text
            destination.indexPath = indexPath
            
        } else {
            let  navigationController = segue.destination as! UINavigationController
            let destination = navigationController.topViewController as!AddItemTableViewController
            destination.delegate = self

        }
    }
    
    func addItemtoTheList (by: AddItemTableViewController, text : String, at : IndexPath?){
        let item = NSEntityDescription.insertNewObject(forEntityName: "BucketList", into: managerObjectContext) as! BucketList
        item.text = text
        if let ip = at {
            bucketList[ip.row].text = text
            saveData()
            
        } else {
            bucketList.append(item)
            saveData()
        }

        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    
    
    func cancelItem( by: AddItemTableViewController){
        dismiss(animated: true, completion: nil)
        
    }
    
    //delete
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        let item = bucketList[indexPath.row]
        managerObjectContext.delete(item)
        saveData()
        bucketList.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        performSegue(withIdentifier: "addItem", sender: indexPath)
        
    }
    
    func saveData() {
        do {
            try managerObjectContext.save()
        } catch {
            print("\(error)")
        }
    }

    
}

