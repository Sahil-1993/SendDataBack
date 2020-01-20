//
//  ViewController.swift
//  SendDataBack
//
//  Created by Sahil Arora on 2019-11-26.
//  Copyright © 2019 Sahil Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Initializers
    @IBOutlet weak var lable_Message: UILabel!
    @IBOutlet weak var button_ClickMe: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK:- Button Actions
    
    
    @IBAction func action_ClickMe(_ sender: UIButton) {
        //method to push to next viewcontroller by segue
        self.performSegue(withIdentifier: "PushToSecondVC", sender: self)
    }
    
    //MARK:- Method prepare for segue : This method helps in send data through segue.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PushToSecondVC"
        {
            //connecting delegate of protocol with this class by creating an obj of other viewcontroller
            
            let vc = segue.destination as! secondViewController
            vc.delegate = self
        }
    }
    
    
}

extension ViewController:sendDataBackDelegate
{
    func sendDataBack(messgae: String) {
        //setting up message as label text
        if messgae == ""
        {
            lable_Message.text = "Hello Again"
        }
        else
        {
            lable_Message.text = messgae
        }
}

}
