//
//  secondViewController.swift
//  SendDataBack
//
//  Created by Sahil Arora on 2020-01-20.
//  Copyright © 2020 Sahil Arora. All rights reserved.
//

import Foundation
import UIKit
//MARK:- defining a protocol
protocol sendDataBackDelegate {
    func sendDataBack(messgae:String)
}

class secondViewController:UIViewController
{
    //MARK:- Initializers
    
    @IBOutlet weak var btn_goBack: UIButton!
    @IBOutlet weak var textField_EnterMessage: UITextField!
    
    var delegate:sendDataBackDelegate? //object of the protocol
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK:- Button Actions
    
    @IBAction func action_GoBackToPreviousScreen(_ sender: UIButton) {
        //while dismissing the viewcontroller on the button press accessing the method of protocol and then popviewcontroller
        delegate?.sendDataBack(messgae: textField_EnterMessage.text!)
        self.navigationController?.popViewController(animated: true)
        
        
        
    }
    
}
