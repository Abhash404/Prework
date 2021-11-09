//
//  ViewController.swift
//  Prework
//
//  Created by Abhash Sainju on 11/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var customTipPercentageSlider: UISlider!
    @IBOutlet var mySwitch: UISwitch!
    
    @IBAction func settingsButton(_ sender: Any) {
        performSegue(withIdentifier: "mySegue", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let destVC : settingsViewController = segue.destination as! settingsViewController
       destVC.dataFromFirst = "Settings Page!"
    }
    // Auto Keyboard without tapping and removing keboard on tapping else where
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextField.becomeFirstResponder()
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        self.title = "Tip Calculator"
    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchDidChange(_ sender: UISwitch) {
        
        if sender.isOn {
            view.backgroundColor = .black
        }
        
        else {
            view.backgroundColor = .systemYellow
        }
    }
    
    @IBAction func calculateTip(_ sender: Any) {
          
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        // Get Total tip by multiplying tip * tipPercentage
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        // Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    // method for slider change in tip percentage
    @IBAction func tipPercentageSliderValueChanged(_ sender: AnyObject) {
        tipAmountLabel.text! = String(format: "Tip: %02d%%", arguments: [Int(customTipPercentageSlider.value * 100)])
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
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
    
    

}

