//
//  ViewController.swift
//  AssignmentUIControls
//
//  Created by Marco Astorga González on 2023-01-26.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //Labels
    @IBOutlet weak var successfullyLabel: UILabel!
    @IBOutlet weak var missingInfoLabel: UILabel!
    
    //TextField
    @IBOutlet weak var fristName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var textField: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Hiden Label
        missingInfoLabel.isHidden=true;
        successfullyLabel.isHidden=true;
        
        // Message label
        successfullyLabel.text="Successfully submitted!";
        missingInfoLabel.text="Complete the missing Info!";
        
        textField.isEditable=false
 
        // only numberPad
        age.keyboardType = .numberPad;
        // call self for func set only number
        age.delegate = self
        

    }
    
    
    
    //Button
    
    
    //Button Add
    @IBAction func Add(_ sender: UIButton) {
        
        // variables to use in textefieldView
        let name = fristName.text ?? "";
        let lastName = lastName.text ?? "";
        let country = country.text ?? "";
        let age = age.text ?? "";
    
        // set text Name,LastName,Country,Age
        textField.text="Full Name : "+name.capitalized+" "+lastName.capitalized+"\nCountry : "+country.capitalized+"\nAge : "+age;
    }

    @IBAction func Submit(_ sender: UIButton) {
        
        // If all text field is void show missingInfo and clear textField
        if(fristName.text=="" && lastName.text=="" && country.text=="" && age.text=="" ){
            
            missingInfoLabel.isHidden=false;
            successfullyLabel.isHidden=true;
            textField.text="";
        }
        
        // If any text field is void show missingInfo else show message successfully
        if(fristName.text==""||lastName.text==""||country.text==""||age.text=="" ){
            missingInfoLabel.isHidden=false;
            successfullyLabel.isHidden=true;
        }else{
            missingInfoLabel.isHidden=true;
            successfullyLabel.isHidden=false;
        }
    }
    
    
    // Button reset all text field and label message
    @IBAction func Clear(_ sender: UIButton) {
        successfullyLabel.isHidden=true;
        missingInfoLabel.isHidden=true;
        fristName.text="";
        lastName.text="";
        country.text="";
        age.text="";
        textField.text="";
    }
    

    // func set only number in textfield for Age
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
}

