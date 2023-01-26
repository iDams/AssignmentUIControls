//
//  ViewController.swift
//  AssignmentUIControls
//
//  Created by Marco Astorga González on 2023-01-26.
//

import UIKit

class ViewController: UIViewController {

    //Labels
    @IBOutlet weak var MissingInfoLabel: UILabel!
    @IBOutlet weak var SuccessfullyLabel: UILabel!
    
    //TextField
    @IBOutlet weak var FristName: UITextField!
    
    @IBOutlet weak var LastName: UITextField!
    
    @IBOutlet weak var Country: UITextField!
    
    @IBOutlet weak var Age: UITextField!
    
    @IBOutlet weak var TextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Button
    @IBAction func Add(_ sender: UIButton) {
    }

    @IBAction func Submit(_ sender: UIButton) {
    }
    
    @IBAction func Clear(_ sender: UIButton) {
    }
}

