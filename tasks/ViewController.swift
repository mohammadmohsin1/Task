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
    var sectionA = ["Ali", "Ammad", "Azim"]
    var sectionB = ["Burhan", "Bilal"]
    var sectionC = ["Chattha"]
    var sectionD = ["Daniyal", "Dawood", "Danny", "dfghj"]
    
    // MARK: - UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - UITableView DataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return sectionA.count
            
        } else if section == 1 {
            return sectionB.count
        
        } else if section == 2 {
            return sectionC.count
            
        } else {
            return sectionD.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "\(indexPath.row)" // String Interpolation
        
        if indexPath.section == 0 {
            cell.textLabel?.text = sectionA[indexPath.row]
            
        } else if indexPath.section == 1 {
            cell.textLabel?.text = sectionB[indexPath.row]
            
        } else if indexPath.section == 2 {
            cell.textLabel?.text = sectionC[indexPath.row]
            
        } else if indexPath.section == 3 {
            cell.textLabel?.text = sectionD[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        //        if section == 0 {
        //            return "Section 0"
        //
        //        } else if section == 1 {
        //            return "Section 1"
        //
        //        } else {
        //            return "Section 2"
        //        }
        return sections[section]
    }
    
    // MARK: - UITableViewDelegate
    
    // This is a delegate method and will be called when user taps on a cell in uitableView, but if you have not set tablview's delegate to self, this method will not be called.
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("Section = \(indexPath.section), Row = \(indexPath.row)")
        
        let loginViewController2 = TestViewController()
        self.present(loginViewController2, animated: true, completion: nil)
       // let loginViewController2 = LoginViewController2()
        //self.present(loginViewController2, animated: true, completion: nil)
    }
}


