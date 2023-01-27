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

        missingInfoLabel.isHidden=true;
        super.viewDidLoad()
        successfullyLabel.text="Successfully submitted!";
        missingInfoLabel.text="Complete the missing Info!";
        successfullyLabel.isHidden=true;
        


    }
    
    
    
    //Button

    @IBAction func Add(_ sender: UIButton) {
        
        let name = fristName.text ?? "";
        let lastName = lastName.text ?? "";
        let country = country.text ?? "";
        let age = age.text ?? "";
    
        textField.text="Full Name:"+name.capitalized+" "+lastName.capitalized+"\nCountry:"+country.capitalized+"\nAge:"+age;
    }

    @IBAction func Submit(_ sender: UIButton) {
        
        if(fristName.text==""||lastName.text==""||country.text==""||age.text=="" ){
            missingInfoLabel.isHidden=false;
        }else{
            successfullyLabel.isHidden=false;
        }
    }
    
    @IBAction func Clear(_ sender: UIButton) {
        successfullyLabel.isHidden=true;
        missingInfoLabel.isHidden=true;
        fristName.text="";
        lastName.text="";
        country.text="";
        age.text="";
        textField.text="";
    }
    


}

