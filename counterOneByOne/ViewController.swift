import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterValueText: UILabel!
    @IBOutlet weak var buttonCountPlusOne: UIButton!
    
    var counter = 0
    var counterDefualtText: String = "Значение\n счётчика:\n"
    var counterActualText: String {
        counterDefualtText + "\(counter)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        counterValueText.text = counterActualText
    }
    
    func plusOne() {
        counter += 1
    }
    
    func changeCounterText() {
        counterValueText.text = counterActualText
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        plusOne()
        changeCounterText()
    }
    
}

