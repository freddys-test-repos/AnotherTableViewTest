//
//  TableViewController.swift
//  AnotherTableviewTest
//
//  Created by Alfredo Merino on 4/4/19.
//  Copyright © 2019 Alfredo Merino. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    var people: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        people = createArray()
    }
    
    func createArray() -> [Person] {
        var tempArray: [Person] = []
        
        let nicole = Person(name: "Nicole", age: "30")
        let elias = Person(name: "Elias", age: "3")
        let ari = Person(name: "Ari", age: "0")
        let helen = Person(name: "Helen", age: "23")
        let emily = Person(name: "Emily", age: "50")
        
        tempArray.append(nicole)
        tempArray.append(elias)
        tempArray.append(ari)
        tempArray.append(helen)
        tempArray.append(emily)
        
        return tempArray
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "MasterToDetail" {
            let destVC = segue.destination as! DetailViewController
            destVC.people = sender as? Person
        }
    }

}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ppl = people[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        cell.setPeople(people: ppl)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let ppl = people[indexPath.row]
        performSegue(withIdentifier: "MasterToDetail", sender: ppl)
    }
    
}
