//
//  DetailViewController.swift
//  AnotherTableviewTest
//
//  Created by Alfredo Merino on 4/5/19.
//  Copyright © 2019 Alfredo Merino. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var personNameView: UILabel!
    @IBOutlet weak var personAgeView: UILabel!
    
    var people: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
    }
    

    func setUI() {
        personNameView.text = people?.name
        personAgeView.text = people?.age
        
    }

}
