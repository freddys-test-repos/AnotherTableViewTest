//
//  TableViewCell.swift
//  AnotherTableviewTest
//
//  Created by Alfredo Merino on 4/4/19.
//  Copyright © 2019 Alfredo Merino. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelView: UILabel!
    
    func setPeople(people: Person) {
       labelView.text = people.name
        
    }
    
}
