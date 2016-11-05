//
//  ViewController.swift
//  checklist2
//
//  Created by Paweł Liczmański on 05.11.2016.
//  Copyright © 2016 Paweł Liczmański. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var items = [ChecklistItem]()
    
    required init?(coder aDecoder: NSCoder) {
        
        let row0item = ChecklistItem()
        row0item.text = "Nauka Swift"
        row0item.checked = true
        items.append(row0item)
        
        let row1item = ChecklistItem()
        row1item.text = "Spakować się"
        row1item.checked = false
        items.append(row1item)
        
        let row2item = ChecklistItem()
        row2item.text = "Siłka"
        row2item.checked = false
        items.append(row2item)
        
        let row3item = ChecklistItem()
        row3item.text = "Kontynuacja nauki Swift"
        row3item.checked = false
        items.append(row3item)
        
        let row4item = ChecklistItem()
        row4item.text = "Coś trzeba wymysleć"
        row4item.checked = false
        items.append(row4item)
            
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        let item = items[indexPath.row]
        
        configureText(for: cell, with: item)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // Methods
    
    func configureText(for cell: UITableViewCell, with item: ChecklistItem){
        let label = cell.viewWithTag(100) as! UILabel
        label.text = item.text
    }


}

