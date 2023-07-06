//
//  ViewController.swift
//  CountUpApp
//
//  Created by 本杉春奈 on 2023/06/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var colorSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabelColor()
    }

    let data1 = DataSource()
    let ds2 = DataSource2()
    let ONE_UP_COUNT: UInt16 = 1
    let TEN_UP_COUNT: UInt16 = 10
    
    @IBAction func oneUpButton(_ sender: Any) {
        data1.countUp(coeff: ONE_UP_COUNT)
//        label.text = data1.decToHex()
//        label.text = data1.count.decToHex()
        label.text = data1.count.decToHex()
    }
    
    @IBAction func tenUpButton(_ sender: Any) {
        ds2.countUp(coeff: TEN_UP_COUNT)
        label2.text = ds2.decToBin()
    }
    
    @IBAction func changeColorButton(_ sender: Any) {
        updateLabelColor()
    }
    
    func updateLabelColor() {
        if colorSwitch.isOn {
            label.textColor = .red
            label2.textColor = .red
        }
        else {
            label.textColor = .black
            label2.textColor = .black
        }
    }
    
    
}
