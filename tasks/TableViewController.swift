//
//  TableViewController.swift
//  tasks
//
//  Created by RedBeard on 27/12/2018.
//  Copyright © 2018 RedBeard. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var name = "Ali"
    var nickName: String?
    var abc: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(nickName ?? "Ali") // providing default value
        
        if let x = nickName {
            print(x) // this line will not be executed, bcz nickName is nil
        }

        nickName = "Mohsin"
        print(nickName!) // force unwraping, do not ever force unWrapp until you are sure that it contains a value

        // Otional Binding: A safe way to extrat value from an optional

        if let x = nickName {
            print(x)
        }

        if let x = nickName, let y = abc {
            print(x)
            print(y)
        }
        
        // User Defaults
        
        // Saving data in UserDefaults
        
        UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
        UserDefaults.standard.set("ALi Mohsin", forKey: "UserNameDummy")
        UserDefaults.standard.set(["Ali", "Mohsin", "Umair"], forKey: "Users")
        
        // Getting data from UserDefaults
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedIn")
        let x = UserDefaults.standard.bool(forKey: "xcxcxcxcxcxcxc") // returns false because this key does not exist
        let userName = UserDefaults.standard.value(forKey: "UserNameDummy")
        let users = UserDefaults.standard.value(forKey: "Users")
        
        //let arr = userName as! [String] // App will crash here, because it will not be able to convert a String to a String Array
        if let u = users as? [String] {
            print(u)
        }
        
        print(userName)
        if isLoggedIn {
            // Present HomeScreen
            
        } else {
            // Login Screen
        }
        print(isLoggedIn)
        
        self.tableView.estimatedRowHeight = 80.0
        self.tableView.rowHeight = UITableView.automaticDimension
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Create identifier
        // register cell
        // dequeue cell
        let kYourCustomTableViewCellIdentifier = "kHomeTableViewCellIdentifier"
        let cellNib = UINib(nibName: "HomeTableViewCell", bundle: Bundle.main)
        tableView.register(cellNib, forCellReuseIdentifier: kYourCustomTableViewCellIdentifier)
        let cell = tableView.dequeueReusableCell(withIdentifier: kYourCustomTableViewCellIdentifier, for: indexPath) as! HomeTableViewCell
        cell.profileimageView.layer.cornerRadius = cell.profileimageView.frame.height/2 // make it round
        cell.profileimageView.clipsToBounds = true
        return cell
    }

//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        
//        if indexPath.row == 0 {
//            return 500
//        }
//        return 200
//    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
