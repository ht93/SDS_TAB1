//
//  ViewController.swift
//  RemoteControl
//
//  Created by Zhang Lian on 24/5/15.
//  Copyright (c) 2015 Zhang Lian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBAction func cancel(segue:UIStoryboardSegue){
        
    }
    
    @IBAction func done(segue:UIStoryboardSegue){
        
        
        /*newAppliance.type = ""
        newAppliance.brand = ""
        newAppliance.serialNumber = ""
        newAppliance.imageName = ""
        newAppliance.status = ""*/
        
        var addAnApplianceVC = segue.sourceViewController as! AddAnApplianceViewController
        
        let dict = [
            "TypeKey":addAnApplianceVC.addType,
            "BrandKey":addAnApplianceVC.addBrand,
            "SerialNumberKey":addAnApplianceVC.addSerialNumber
        ]
        var newAppliance = Appliance(dictionary: dict)
        
        allAppliances.append(newAppliance)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    var allAppliances = Appliance.allAppliances
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.allAppliances.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCellWithIdentifier("ApplianceCell", forIndexPath: indexPath) as! CustomTableViewCell
        
        let appliance = allAppliances[indexPath.row]
        
        customCell.customBrandLabel.text = appliance.brand
        customCell.customSerialNumberLabel.text = appliance.serialNumber
        customCell.customImageView.image = UIImage(named: appliance.imageName)
        
        return customCell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedAppliance = self.allAppliances[indexPath.row]
        
        let selectedType = selectedAppliance.type
        
        if (selectedType == "Television"){
            let selectedRemoteController = self.storyboard!.instantiateViewControllerWithIdentifier("TelevisionRemoteController") as! TelevisionViewController
            self.navigationController!.pushViewController(selectedRemoteController, animated: true)
        }
        
        if (selectedType == "Fan"){
            let selectedRemoteController = self.storyboard!.instantiateViewControllerWithIdentifier("FanRemoteController") as! FanViewController
            self.navigationController!.pushViewController(selectedRemoteController, animated: true)
        }
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }

    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            self.allAppliances.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
}

