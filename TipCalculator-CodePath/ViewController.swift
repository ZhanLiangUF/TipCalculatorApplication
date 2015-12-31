//
//  ViewController.swift
//  TipCalculator-CodePath
//
//  Created by Zhan Liang on 12/30/15.
//  Copyright (c) 2015 Zhan Liang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billField: UITextField!

    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBOutlet weak var totalLabel: UILabel!
   
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
  
   tipLabel.text = "$0.00"
   totalLabel.text = "0.00"
        
    self.title = " Tip Calculator "
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
        
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
   
 let defaults = NSUserDefaults.standardUserDefaults()

        
        
        
        
        
        
    var tipPercentages = [0.15, 0.18, 0.21]
    var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
     
        var billNumber = billField.text!
        
        let billAmount = NSString(string:billNumber).doubleValue
        
        
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String ( format:"$%.2f", tip)
        totalLabel.text = String(format:"$%.2f", total)
        
        
    }
        
        
 
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        
    }
    

            
    }
        
        
        
        
        
        
        
        
        
   
        




