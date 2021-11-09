//
//  settingsViewController.swift
//  Prework
//
//  Created by Abhash Sainju on 11/8/21.
//

import UIKit

class settingsViewController: UIViewController {
    
    var dataFromFirst :String = ""
    
    @IBOutlet var mySwitch: UISwitch!
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayLabel.text = dataFromFirst
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
