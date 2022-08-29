//
//  ViewController.swift
//  UITextFieldsHackwich
//
//  Created by Phipps, Jacob - Student on 8/29/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameLabel.text = nameTextField.text
        nameTextField.resignFirstResponder()
        return true
    }
    
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        nameLabel.text = nameTextField.text
        print(nameTextField.text)
        nameTextField.resignFirstResponder()
    }
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func primaryActionTriggered(_ sender: UIButton) {
        nameLabel.text = nameTextField.text
        nameTextField.resignFirstResponder()
    }
}


