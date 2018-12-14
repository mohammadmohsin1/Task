//
//  SecondViewController.swift
//  tasks
//
//  Created by RedBeard on 10/12/2018.
//  Copyright © 2018 RedBeard. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name = ""
    var marks = [Int]()
    
    var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        print(person.color)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func goBackButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil) // we are using dismiss function because we presented this viewCOntroller instead of pushing it in the navigation stack
    }
}
