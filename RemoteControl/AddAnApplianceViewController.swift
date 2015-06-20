//
//  AddAnApplianceViewController.swift
//  RemoteControl
//
//  Created by Zhang Lian on 4/6/15.
//  Copyright (c) 2015 Zhang Lian. All rights reserved.
//

import UIKit

class AddAnApplianceViewController: UIViewController {

    @IBOutlet weak var applianceType: UITextField!
    
    
    @IBOutlet weak var brandName: UITextField!
    
    
    @IBOutlet weak var serialNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var addType: String = ""
    var addBrand: String = ""
    var addSerialNumber: String = ""
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "doneSegue" {
            addType = applianceType.text
            addBrand = brandName.text
            addSerialNumber = serialNumber.text
        }
       
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
