//
//  ViewController.swift
//  UIAlertController-23-07-2017
//
//  Created by Soeng Saravit on 7/23/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var alert:UIAlertController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert(_ sender: Any) {
        popUpAlert()
    }
    
    
    func popUpAlert() {
//        alert = UIAlertController(title: "Confirm!", message: "Do you want to delete?", preferredStyle: .actionSheet)
//        
//        let Yes = UIAlertAction(title: "Yes", style: .default) { (action) in
//            print("Yes is clicked.")
//        }
//        let No = UIAlertAction(title: "No", style: .destructive) { (action) in
//            print("No is clicked.")
//        }
//        
//        alert.addAction(No)
//        alert.addAction(Yes)
        let alert = UIAlertController(title: "Confirm!", message: "Please, Input username and password.", preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "username"
        }
        alert.addTextField { (textField) in
            textField.placeholder = "password"
            textField.isSecureTextEntry = true
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .destructive) { (action) in
            print("cancel")
        }
        let login = UIAlertAction(title: "Login", style: .default) { (action) in
            let username = alert.textFields?[0].text
            let password = alert.textFields?[1].text
            
            print("\(username!): \(password!)")
        }
        alert.addAction(cancel)
        alert.addAction(login)
        
        self.present(alert, animated: true, completion: nil)
    }
}

