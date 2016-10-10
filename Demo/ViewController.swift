//
//  ViewController.swift
//  Demo
//
//  Created by Ludovic Ollagnier on 03/10/2016.
//  Copyright © 2016 Tec-Tec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var fastSwitch: UISwitch!
    @IBOutlet weak var gradeSlider: UISlider!

    var storage: Storage?

    var formIsValide: Bool {
        guard let name = nameTextField.text else {
            return false
        }

        guard let address = addressTextField.text else {
            return false
        }

        guard !name.isEmpty && !address.isEmpty else {
            return false
        }
        
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createRestaurant(_ sender: UIButton) {

        guard formIsValide else {
            return
        }

        let resto = Restaurant(name: nameTextField.text!, address: addressTextField.text!, isFast: fastSwitch.isOn, grade: gradeSlider.value)
        storage!.add(resto)
        dismiss(animated: true, completion: nil)
    }

}

