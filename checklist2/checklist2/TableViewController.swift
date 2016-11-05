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
        items.append(row0item)
        
        let row1item = ChecklistItem()
        row1item.text = "Paznokcie"
        items.append(row1item)
        
        let row2item = ChecklistItem()
        row2item.text = "Siłka"
        items.append(row2item)
        
        let row3item = ChecklistItem()
        row3item.text = "kontynuacja nauki Swift"
        items.append(row3item)
        
        let row4item = ChecklistItem()
        row4item.text = "Cos trzeba wymysleć"
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
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        let item = items[indexPath.row]
        
        var label = cell.viewWithTag(100) as! UILabel
        label.text = item.text
        
        return cell
    }


}

