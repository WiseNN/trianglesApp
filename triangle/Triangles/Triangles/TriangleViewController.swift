//
//  ViewController.swift
//  Triangles
//
//  Created by Norris Wise on 10/4/16.
//  Copyright © 2016 Norris Swift. All rights reserved.
//

import UIKit

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
    let q = Computations();

    override func viewDidLoad()
    {
        super.viewDidLoad()
        side1TextField.delegate = self
        side2TextField.delegate = self
        side3TextField.delegate = self
        submitButton.addTarget(self, action: #selector(TriangleViewController.computeTriangle), forControlEvents: UIControlEvents.TouchUpInside)
    }
  
    
     func updateUI(result: String)
    {
        resultsLabel.text = result
        side1TextField.text! = ""
        side2TextField.text! = ""
        side3TextField.text! = ""
    }
    
    
    func computeTriangle()
    {
        
        let s1 : Int? = Int(side1TextField.text!)
        let s2 : Int? = Int(side2TextField.text!)
        let s3 : Int? = Int(side3TextField.text!)
        
        guard s1 != nil && s2 != nil && s3 != nil else{
            updateUI("\(TextFieldError.EnterValidInput)")
            return}
        
        let getResult = q.triangleWithSidesTypeIs(s1!, side2: s2!, side3: s3!)
        
        updateUI(getResult)
    }
    

    func textFieldDidBeginEditing(textField: UITextField)
    {
        textField.becomeFirstResponder()
        
        if textField.text!.isEmpty
        {
            resultsLabel.text = ""
        }
    }
    func textFieldDidEndEditing(textField: UITextField)
    {
        textField.resignFirstResponder()
    }

 

}

