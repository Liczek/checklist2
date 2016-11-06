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
        row0item.checked = false
        items.append(row0item)
        
        let row1item = ChecklistItem()
        row1item.text = "Spakować się na siłkę"
        row1item.checked = true
        items.append(row1item)
        
        let row2item = ChecklistItem()
        row2item.text = "Siłka"
        row2item.checked = false
        items.append(row2item)
        
        let row3item = ChecklistItem()
        row3item.text = "Kontynuacja nauki Swift"
        row3item.checked = true
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
        configurCheckmark(for: cell, with: item)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath){
        
        let item = items[indexPath.row]
        
        item.toggleCheckmark()
        
        configurCheckmark(for: cell, with: item) }
        
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
        
    // Methods
    
    func configureText(for cell: UITableViewCell, with item: ChecklistItem){
        
        let label = cell.viewWithTag(100) as! UILabel
        label.text = item.text
    }
    
    func configurCheckmark(for cell: UITableViewCell, with item: ChecklistItem){
        if item.checked {
            cell.accessoryType = .checkmark
        }else{
            cell.accessoryType = .none
        }
        
    }
    
    @IBAction func adItem() {
        
        let newRowIndex = items.count
        
        let item = ChecklistItem()
        item.text = "Nowy row"
        item.checked = true
        items.append(item)
        
        let indexPath = IndexPath(row: newRowIndex, section: 0)
        let indexPaths = [indexPath]
        tableView.insertRows(at: indexPaths, with: .automatic)

        
    }


}

