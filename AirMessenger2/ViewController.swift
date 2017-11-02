//
//  ViewController.swift
//  AirMessenger2
//
//  Created by Kushagra Saxena on 02/11/17.
//  Copyright © 2017 Kushagra Saxena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var Admins = ["Kushagra","Ayush","Alok","Ashutosh"]
     var Members = ["Member1","Member2","Member3","Member4","Member5","Member6"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBOutlet var userName: UITextField!
    
    
    @IBAction func loginButton() {
        
        if Admins.contains(userName.text!)
        {   print("admin")
            performSegue(withIdentifier: "adminsegue", sender: nil)
        }
       else if Members.contains(userName.text!)
        {   print("Member")
            performSegue(withIdentifier: "membersegue", sender: nil)
        }
        else
        {   print("notexist")
            performSegue(withIdentifier: "notfoundsegue", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "membersegue"
        { let nvc = segue.destination as! MemberViewController
           print(userName.text)
            nvc.welcomeLabel.text = "Welcome \(userName.text!)"
            
        }
    }
    
    

}

