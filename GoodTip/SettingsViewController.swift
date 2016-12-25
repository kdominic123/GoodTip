//
//  SettingsViewController.swift
//  GoodTip
//
//  Created by Kenan Dominic on 12/23/16.
//  Copyright © 2016 Kenan Dominic. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var percentageSelector: UISegmentedControl!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func setDefault(_ sender: Any) {
        
        let index = percentageSelector.selectedSegmentIndex
        defaults.set(index, forKey: "defaultPercentage")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
