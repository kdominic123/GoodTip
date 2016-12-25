//
//  ViewController.swift
//  GoodTip
//
//  Created by Kenan Dominic on 12/23/16.
//  Copyright © 2016 Kenan Dominic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var getPercentage: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "GoodTip"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        
        var index = 0
        index = defaults.integer(forKey: "defaultPercentage")
        getPercentage.selectedSegmentIndex = index
        calculateTip(Any.self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func valueChanged(_ sender: Any) {
        calculateTip(Any.self)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.15, 0.20, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[getPercentage.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

