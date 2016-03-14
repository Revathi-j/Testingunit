//
//  ViewController.swift
//  Testingunit
//
//  Created by BLT0009-MACMI on 10/03/16.
//  Copyright © 2016 BLT0009-MACMI. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIAlertViewDelegate{

    @IBOutlet var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func isValidEmail(testStr:String) -> Bool {
        
             let emailRegEx = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        
        return emailTest.evaluateWithObject(testStr)
        
        
    }
    
    @IBAction func Submit(sender: AnyObject) {
        
        if (isValidEmail(name.text!)){
            
            let alert : UIAlertView = UIAlertView(title: "Alert", message: "valid Login", delegate: self, cancelButtonTitle: "OK");
            
            alert.show()

 
        }else{
        
            let alert : UIAlertView = UIAlertView(title: "Alert", message: "Invalid Login", delegate: self, cancelButtonTitle: "OK");
            
            alert.show()

        
    }
    }
      override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

