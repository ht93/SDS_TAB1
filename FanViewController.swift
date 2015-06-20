//
//  FanViewController.swift
//  RemoteControl
//
//  Created by Zhang Lian on 25/5/15.
//  Copyright (c) 2015 Zhang Lian. All rights reserved.
//

import UIKit

class FanViewController: UIViewController {

    @IBOutlet weak var Temperature: UILabel!
    
    @IBOutlet weak var InputTemperature: UITextField!
    
    @IBOutlet weak var AdjustTemperature: UIStepper!
    
    @IBOutlet weak var Speed: UILabel!
    
    @IBOutlet weak var InputSpeed: UITextField!
    
    @IBOutlet weak var AdjustSpeed: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
