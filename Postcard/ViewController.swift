//
//  ViewController.swift
//  Postcard
//
//  Created by Alberto Calvo on 14/11/14.
//  Copyright (c) 2014 Alberto Calvo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MessageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var EnterNameTextField: UITextField!
    @IBOutlet weak var EnterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        // adding a comment here to test commit
        MessageLabel.hidden = false
        MessageLabel.text = EnterMessageTextField.text
        MessageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = EnterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        EnterNameTextField.text = ""
        EnterNameTextField.resignFirstResponder()
        EnterMessageTextField.text = ""
        EnterMessageTextField.resignFirstResponder()
        
        
        
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

