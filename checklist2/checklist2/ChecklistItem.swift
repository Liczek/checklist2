//
//  ChecklistItem.swift
//  checklist2
//
//  Created by Paweł Liczmański on 05.11.2016.
//  Copyright © 2016 Paweł Liczmański. All rights reserved.
//

import Foundation


class ChecklistItem {
    var text = ""
    var checked = false
    
    func togglecheck() {
    checked = !checked
    }
}
