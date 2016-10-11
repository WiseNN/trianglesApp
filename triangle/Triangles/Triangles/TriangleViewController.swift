//
//  ViewController.swift
//  Triangles
//
//  Created by Norris Wise on 10/4/16.
//  Copyright © 2016 Norris Swift. All rights reserved.
//

import UIKit

//error definition for no input
enum TextFieldError:ErrorType {
    case EnterValidInput
    
}

class TriangleViewController: UIViewController, UITextFieldDelegate
{
    
    //UI Objects
    @IBOutlet weak var side1TextField: UITextField!
    @IBOutlet weak var side2TextField: UITextField!
    @IBOutlet weak var side3TextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var resultsLabel: UILabel!
    
    //reference variables
    let triangleVC = TriangleComputations();

    override func viewDidLoad()
    {
        super.viewDidLoad()
        side1TextField.delegate = self
        side2TextField.delegate = self
        side3TextField.delegate = self
        submitButton.addTarget(self, action: #selector(TriangleViewController.computeTriangle), forControlEvents: UIControlEvents.TouchUpInside)
    }
  
    
    //update UI when an event happens
    func updateUI(result: String)
     {
        resultsLabel.text = result
        side1TextField.text! = ""
        side2TextField.text! = ""
        side3TextField.text! = ""
     }
    
    //action method for computing triangle, calls the logic model
    func computeTriangle()
    {
        
        let s1 : Int? = Int(side1TextField.text!)
        let s2 : Int? = Int(side2TextField.text!)
        let s3 : Int? = Int(side3TextField.text!)
        
        guard s1 != nil && s2 != nil && s3 != nil else{ updateUI("\(TextFieldError.EnterValidInput)"); return}
        
        let getResult = triangleVC.triangleWithSidesTypeIs(s1!, side2: s2!, side3: s3!)
        
        updateUI(getResult)
    }
    

    //makes keyboard appear on screen, becomes responder to events
    func textFieldDidBeginEditing(textField: UITextField)
    {
        textField.becomeFirstResponder()
        
        if textField.text!.isEmpty
        { resultsLabel.text = "" }
    }
    //retract keyboard when done typing
    func textFieldDidEndEditing(textField: UITextField)
    {
        textField.resignFirstResponder()
    }

 

}

