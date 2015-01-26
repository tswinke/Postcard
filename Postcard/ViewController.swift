//
//  ViewController.swift
//  Postcard
//
//  Created by Tillman on 18.01.15.
//  Copyright (c) 2015 sirius development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var MailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButttonPressed(sender: UIButton) {
        //Code will evaluate when we press the button
       messageLabel.hidden=false
        messageLabel.text = enterNameTextField.text
        
        messageLabel.textColor=UIColor.redColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        MailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        //Test
        enterNameTextField.hidden = true

    }
}

