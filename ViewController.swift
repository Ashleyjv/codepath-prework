//
//  ViewController.swift
//  IntroduceSelf
//
//  Created by Ashley J Varghese on 1/30/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var First: UITextField!

    @IBOutlet weak var Last: UITextField!
    @IBOutlet weak var School: UITextField!
    
    @IBOutlet weak var petsLabel: UILabel!
    @IBOutlet weak var petsStepper: UIStepper!
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var petsSwitch: UISwitch!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func StepperClick(_ sender: UIStepper) {
        petsLabel.text = "\(Int(sender.value))"

    }
    
    @IBAction func IntroButton(_ sender: UIButton) {
        // Lets us choose the title we have selected from the segmented control
                // In our example that is whether it is first, second, third or forth
                let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
                
                // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
                let introduction = "My name is \(First.text!) \(Last.text!) and I attend \(School.text!). I am currently in my \(year!) year and I own \(petsLabel.text!) dogs. It is \(petsSwitch.isOn) that I want more pets."
                
        // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
    }
    
}

