//
//  ViewController.swift
//  MCDemo
//
//  Created by Dan Lange on 10/11/17.
//  Copyright © 2017 Dan Lange. All rights reserved.
//

import UIKit
import AppCenterAnalytics


class ViewController: UIViewController {

    @IBOutlet weak var shortVersionLabel: UILabel!
    @IBOutlet weak var longVersionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        getBuildNumber()
        getLongBuildNumber()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onCrashApp(_ sender: Any) {
        let x = [0]
    
        _ = x[1]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CHOICE1_SEGUE" {
            MSAnalytics.trackEvent("Selection", withProperties: ["Category" : "Choice 1"])
        }
        
        if segue.identifier == "CHOICE2_SEGUE" {
            MSAnalytics.trackEvent("Selection", withProperties: ["Category" : "Choice 2"])
        }
    }
    
    func getBuildNumber() {
        //First get the nsObject by defining as an optional anyObject
        let nsObject: AnyObject? = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as AnyObject
    
        //Then just cast the object as a String, but be careful, you may want to double check for nil
        let version = nsObject as! String
        shortVersionLabel.text = "Version: \(version)"
    }
    
    func getLongBuildNumber() {
        //First get the nsObject by defining as an optional anyObject
        let nsObject: AnyObject? = Bundle.main.infoDictionary?["CFBundleVersion"] as AnyObject
        
        //Then just cast the object as a String, but be careful, you may want to double check for nil
        let version = nsObject as! String
        longVersionLabel.text = "Build: \(version)"
    }
    
}

