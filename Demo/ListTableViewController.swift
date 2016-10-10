//
//  ListTableViewController.swift
//  Demo
//
//  Created by Ludovic Ollagnier on 05/10/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    var storage = Storage()

    //"Ancienne" façon de présenter une nouvelle vue
    @IBAction func showForm(_ sender: AnyObject) {
        guard let formController = self.storyboard?.instantiateViewController(withIdentifier: "Form") else {return}
        present(formController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let resto = Restaurant(name: "Test", address: "Test", isFast: true, grade: 5.0)
        storage.add(resto)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return storage.allRestaurants.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "restoCell", for: indexPath)

        // Configure the cell...
        let resto = storage.allRestaurants[indexPath.row]
        cell.textLabel?.text = resto.name
        cell.detailTextLabel?.text = resto.address

        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "Form" {
            let dest = segue.destination as! ViewController
            dest.storage = storage
        }
    }

    @IBAction func refreshTableView(_ sender: AnyObject) {

        tableView.reloadData()
    }
}
















