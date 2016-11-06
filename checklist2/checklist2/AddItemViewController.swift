//
//  AddItemViewController.swift
//  checklist2
//
//  Created by Paweł Liczmański on 06.11.2016.
//  Copyright © 2016 Paweł Liczmański. All rights reserved.
//

import Foundation
import UIKit

class AddItemViewController: UITableViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doneButton(_ sender: UIBarButtonItem) {
        
        
        dismiss(animated: true, completion: nil)
    }
    
}
