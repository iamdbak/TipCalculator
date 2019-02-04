//
//  ViewController.swift
//  TIppsy
//
//  Created by Divyaraj Bakrola on 2/3/19.
//  Copyright © 2019 Divyaraj Bakrola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Checkfield: UITextField!
    
    @IBOutlet weak var tiplabel: UILabel!
    
    @IBOutlet weak var tipIndex: UISegmentedControl!
    @IBOutlet weak var TotalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any)
    {
        print("Hello")
        view.endEditing(true)
    }
    
    
    @IBAction func CalTip(_ sender: Any)
    {
        let Check = Double(Checkfield.text!)  ?? 0
        let tipPercentage =
[0.15,0.18,0.2]
        let tip = Check * tipPercentage[tipIndex.selectedSegmentIndex]
        let Total = Check + tip
        
//        tiplabel.text = "$\(tip)"
        TotalLabel.text = "$\(Total)"
        
        tiplabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", Total)
    }
}
    


