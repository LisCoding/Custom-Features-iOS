//
//  AddAndMinusProtocol.swift
//  counter
//
//  Created by Liseth Cardozo Sejas on 9/21/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import Foundation
import UIKit

protocol addAndMinusDelegate {
    func addNumber(by : MyTableCell, text : String)
    func minusNumber(by : MyTableCell, text : String)
}
