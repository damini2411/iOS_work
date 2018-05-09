//
//  RegistrationViewController.swift
//  Phase_1
//
//  Created by Damini Dholakiya on 2017-07-03.
//  Copyright © 2017 Damini Dholakiya. All rights reserved.
//

import Foundation
import UIKit

class RegistrationViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var lblShopStyle: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmailId: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBAction func btnContinue(_ sender: UIButton) {
        do {
            if (!(txtName.text?.isEmpty)! && !(txtEmailId.text?.isEmpty)! && !(txtPassword.text?.isEmpty)!) {
                let storyboard = UIStoryboard(name: "Main", bundle: nil);
                let vc = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! CategoryViewController; // MySecondSecreen the storyboard ID
                
                self.present(vc, animated: true, completion: nil);
            }else{
                showAlert()
            }
            
        } catch  {
            
        }
    }
    
    func showAlert() {
        let alertController = UIAlertController(title: "Warning", message: "Enter All Details", preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    //MARK: Text Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // txtRestName.resignFirstResponder()
        textField.resignFirstResponder()
        return true
    }
    
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        txtName.delegate = self
        txtEmailId.delegate = self
        txtPassword.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
