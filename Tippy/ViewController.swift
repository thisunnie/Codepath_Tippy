//
//  ViewController.swift
//  Tippy
//
//  Created by Chill User on 1/29/17.
//  Copyright © 2017 Chill User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

         // name the numbers as labels
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var secondView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tipLabel.alpha = 0
        self.tipAmount.alpha = 0
        self.totalLabel.alpha = 0
        self.totalAmount.alpha = 0
        self.tipControl.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: AnyObject) {
        
            view.endEditing(true)
        
        }
    

    @IBAction func onEditing(_ sender: UITextField) {
        
        UIView.animate(withDuration: 0.4, animations: {
            
            self.tipLabel.alpha = 1
            self.tipAmount.alpha = 1
            self.totalLabel.alpha = 1
            self.totalAmount.alpha = 1
            self.tipControl.alpha = 1
            
        })
        
    }


        // Create the calulate function
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.15, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
    }
    
}

