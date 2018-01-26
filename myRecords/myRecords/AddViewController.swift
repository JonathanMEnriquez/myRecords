//
//  AddViewController.swift
//  myRecords
//
//  Created by user on 1/25/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

protocol AddViewControllerDelegate {
    func addRecord(name: String, artist: String, genre: String, year: Int16)
}

class AddViewController: UIViewController {

    var delegate: AddViewControllerDelegate?
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var artistField: UITextField!
    @IBOutlet var genreField: UITextField!
    @IBOutlet var yearField: UITextField!
    @IBOutlet var addButton: UIButton!
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
