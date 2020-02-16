//
//  ViewController.swift
//  BDdemo
//
//  Created by Amira Maythe Vasquez on 16/02/2020.
//  Copyright © 2020 desafio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableViewDemo: UITableView!
    
    let cellReuseIdentifier = "cell"

    var db:DBHelper = DBHelper()

    //array de pessoas
    var persons: [Person] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewDemo.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        tableViewDemo.delegate = self
        tableViewDemo.dataSource = self

        db.insert(id: 1, name: "Bilal", age: 24)
        db.insert(id: 2, name: "Bosh", age: 25)
        db.insert(id: 3, name: "Thor", age: 23)
        db.insert(id: 4, name: "Edward", age: 44)
        db.insert(id: 5, name: "Ronaldo", age: 34)

        persons = db.read()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return persons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        cell.textLabel?.text = "Name: " + persons[indexPath.row].name + ", " + "Idade: " + String(persons[indexPath.row].idade)

        return cell
    }


}

