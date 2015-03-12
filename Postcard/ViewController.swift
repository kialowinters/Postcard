//
//  ViewController.swift
//  Postcard
//
//  Created by Kialo Winters on 2/15/15.
//  Copyright (c) 2015 Native Innovation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var displayNameMessage: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        // Adding a comment here to test commits
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
    displayNameMessage.hidden = false
    displayNameMessage.text = enterNameTextField.text
    displayNameMessage.textColor = UIColor.blueColor()
        
    enterNameTextField.text = ""
    enterNameTextField.resignFirstResponder()
        
    messageLabel.hidden = false
    messageLabel.text = enterMessageTextField.text
    messageLabel.textColor = UIColor.redColor()
        
    enterMessageTextField.text = ""
    enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

