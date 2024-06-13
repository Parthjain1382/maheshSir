//
//  ViewController.swift
//  UiElementsProgramatically
//
//  Created by E5000846 on 29/05/24.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    //Defining the buttons
    var uiTextField = UITextField()
    var uiButton : UIButton!
    var uiLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //System View Background Color
        view.backgroundColor = .systemBlue
        
        //Ui button Submit
        uiButton = UIButton(frame: CGRect(x: 150, y: 700, width: 80, height: 40))
        uiButton.setTitle("Submit", for: .normal)
        uiButton.backgroundColor = .red
        uiButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(uiButton)
        
        //textField
        uiTextField = UITextField(frame: CGRect(x: 100, y: 400, width: 200, height: 40))
        uiTextField.backgroundColor = .cyan
        uiTextField.placeholder = " Enter the Text Field"
        uiTextField.delegate = self
        view.addSubview(uiTextField)
        
        //label at the Top
         uiLabel = UILabel(frame: CGRect.init(x: self.view.frame.size.width*0.1, y: self.view.frame.size.height*0.08, width: self.view.frame.size.width*0.80, height: self.view.frame.size.height*0.05))
        uiLabel.backgroundColor = .red
        view.addSubview(uiLabel)
        
    }
    
    @objc func buttonTapped(){
        print(uiTextField.text!)
        uiLabel.text = uiTextField.text!
    }

    //MARK: - UiTextField Delegate Methods
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("should  Begin")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("begin Editing")
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("should clear")
        return true
    }
    
//MARK: - Changing the textField and the Label simultaneously
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        
        // Calculate the new text
        let prospectiveText = (currentText as NSString).replacingCharacters(in: range, with: string)
              
        // Update the label's text
        uiLabel.text = prospectiveText
              
        return true
        
    }
}

