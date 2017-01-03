//
//  ViewController.swift
//  tipcalc
//
//  Created by monus on 03/01/2017.
//  Copyright © 2017 Mufi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billText: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    
    @IBAction func segmentChanged(_ sender: Any) {
        calculateTip(sender)
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billText.text!) ?? 0
        
        let percentages = [0.18, 0.2, 0.25]
        
        let tip = bill * percentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

