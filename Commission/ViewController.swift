//
//  ViewController.swift
//  Commission
//
//  Created by Maya Wasilewski on 9/29/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TotalPayLabel: UILabel!
    @IBOutlet weak var CommissionPayTextField: UITextField!
    @IBOutlet weak var BasePayLabel: UILabel!
    

    let basePay:Double = 500
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BasePayLabel.text = "\(basePay)"
        TotalPayLabel.text = ""
        
    }
@IBAction func whenButtonPressed(_ sender: Any)
    {
    let dataString = CommissionPayTextField.text!
    let commissionPay = Double(dataString) ?? 5.0
    let totalPay = basePay + commissionPay
    TotalPayLabel.text = "$\(totalPay)"
    }
    
}

