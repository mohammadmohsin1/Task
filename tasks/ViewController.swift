//
//  ViewController.swift
//  tasks
//
//  Created by RedBeard on 07/12/2018.
//  Copyright © 2018 RedBeard. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - Variables & Constants
    
    @IBOutlet weak var tableView: UITableView!
    
    var sections = ["A", "B", "C", "D"]
    var names = [["Ali", "Ammad", "Azim"], ["Burhan", "Bilal"], ["Chattha"], ["Daniyal", "Dawood", "Danny", "Dann"]]
    
    // MARK: - UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if sections.count != names.count {
            print("Invalid Data")
            return
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if sections.count != names.count {
            let alertController = UIAlertController(title: "Error", message: "You provided Invalid data", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Got it..!!", style: .default, handler: nil)
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            
        }
    }
    
    // MARK: - UITableView DataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
//        let x = names[indexPath.section]
//        cell.textLabel?.text = x[indexPath.row]
        cell.textLabel?.text = names[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    // MARK: - UITableViewDelegate
    
    // This is a delegate method and will be called when user taps on a cell in uitableView, but if you have not set tablview's delegate to self, this method will not be called.
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("Section = \(indexPath.section), Row = \(indexPath.row)")
        let loginViewController2 = TestViewController()
        self.present(loginViewController2, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            names[indexPath.section].remove(at: indexPath.row)
            tableView.reloadData()
            // delete object from dataSource and reload data
        }
    }
}

