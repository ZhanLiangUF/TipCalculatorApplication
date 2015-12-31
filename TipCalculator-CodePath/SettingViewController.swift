//
//  SettingViewController.swift
//  TipCalculator-CodePath
//
//  Created by Zhan Liang on 12/30/15.
//  Copyright (c) 2015 Zhan Liang. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var percentage1: UITextField!
    
    
    
    @IBOutlet weak var percentage2: UITextField!
    
    
    @IBOutlet weak var percentage3: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      self.title = "Settings"
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func tipclicked(sender: AnyObject) {
    
  var percentage1Number = percentage1.text!
  
        let a = NSString(string: percentage1Number).doubleValue
        
  var percentage2Number =
        percentage2.text!
        
        let b = NSString(string:percentage2Number).doubleValue
        
        
  var percentage3Number =
        percentage3.text!
        
        let c = NSString(string:percentage3Number).doubleValue

 let defaults = NSUserDefaults.standardUserDefaults()
        
        
        defaults.setDouble(a, forKey:"segment1")
        
        defaults.setDouble(b,forKey:"segment2")
        
        defaults.setDouble(c, forKey:"segment3")
        
    defaults.synchronize()
        
  
 
        
        
        
        
        

        
        
    
        
        
        
        
        
        
        
    
    
    }
   
    
    
}
