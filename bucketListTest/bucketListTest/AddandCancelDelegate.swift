//
//  File.swift
//  bucketListTest
//
//  Created by Liseth Cardozo Sejas on 9/21/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import Foundation

protocol addAndCancelDelegate {
    func addItemtoTheList (by: AddItemTableViewController, text : String, at : IndexPath?)
    func cancelItem( by: AddItemTableViewController)
}
