//
//  ViewController.swift
//  Phase_1
//
//  Created by Damini Dholakiya on 2017-06-29.
//  Copyright © 2017 Damini Dholakiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    //MARK: Properties
    //categoryViewController
    
    @IBOutlet weak var lblTitle: UILabel!

    @IBOutlet weak var txtUserId: UITextField!
    
    @IBOutlet weak var lblOr: UILabel!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func btnRegister(_ sender: UIButton) {
    }
   
    @IBAction func btnLogin(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtUserId.delegate = self
        txtPassword.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func LoggedIn(_ sender: UIButton) {
        do {
            if (!(txtUserId.text?.isEmpty)! && !(txtPassword.text?.isEmpty)!) {
                let storyboard = UIStoryboard(name: "Main", bundle: nil);
                let vc = storyboard.instantiateViewController(withIdentifier: "categoryViewController") as! CategoryViewController; // MySecondSecreen the storyboard ID
                
                self.present(vc, animated: true, completion: nil);
                txtUserId.text = ""
                txtPassword.text = ""
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

}

