//
//  TelevisionViewController.swift
//  RemoteControl
//
//  Created by Zhang Lian on 25/5/15.
//  Copyright (c) 2015 Zhang Lian. All rights reserved.
//

import UIKit

class TelevisionViewController: UIViewController {

    @IBOutlet weak var Channel: UILabel!
    
    @IBOutlet weak var InputChannel: UITextField!
    
    @IBOutlet weak var AdjustChannel: UIStepper!
    
    @IBOutlet weak var Volume: UILabel!
    
    @IBOutlet weak var InputVolume: UITextField!
    
    @IBOutlet weak var AdjustVolume: UIStepper!
    
    
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
