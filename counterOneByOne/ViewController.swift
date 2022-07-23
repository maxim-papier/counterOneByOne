//
//  ViewController.swift
//  counterOneByOne
//
//  Created by Maxim V. Brykov on 21.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterValueText: UILabel!
    @IBOutlet weak var buttonCountPlusOne: UIButton!
    
    var counterValue: Int = 0
    var defaultCounterText: String = "Значение\n счётчика:\n"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterValueText.text = defaultCounterText + "\(counterValue)"
    }
    
    func counterNewData() -> (Int) {
        counterValue += 1
        return counterValue
    }
    
    func changeCounterText() {
        counterValueText.text = defaultCounterText + "\(counterNewData())"
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        changeCounterText()
    }
    
}

