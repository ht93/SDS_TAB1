//
//  CustomTableViewCell.swift
//  RemoteControl
//
//  Created by Zhang Lian on 25/5/15.
//  Copyright (c) 2015 Zhang Lian. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var customBrandLabel: UILabel!
    
    @IBOutlet weak var customSerialNumberLabel: UILabel!
    
    @IBOutlet weak var customImageView: UIImageView!

    @IBOutlet weak var customSwitch: UISwitch!
    
    @IBAction func customSwitchPressed(sender: AnyObject) {
        if customSwitch.on
        {
            //Appliance.StatusKey = "ON"
        }
        else
        {
            //Appliance.status = "OFF"
        }
    }
}
