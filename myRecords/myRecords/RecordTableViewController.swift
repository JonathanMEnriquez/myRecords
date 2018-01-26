//
//  RecordTableViewController.swift
//  myRecords
//
//  Created by user on 1/25/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class RecordTableViewController: UITableViewController {

    let managedObjectContent = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var myRecords = [Record]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let addViewC = tabBarController?.viewControllers![1] as! AddViewController
        addViewC.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myRecords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecordCell", for: indexPath) as! RecordCell
        tableView.rowHeight = 80
        return cell
    }
}

extension RecordTableViewController: AddViewControllerDelegate {
    
    func addRecord(name: String, artist: String, genre: String, year: Int16) {
        //ADD CODE
    }
}
