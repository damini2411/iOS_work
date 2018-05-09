//
//  CategoryViewController.swift
//  Phase_1
//
//  Created by Damini Dholakiya on 2017-07-03.
//  Copyright © 2017 Damini Dholakiya. All rights reserved.
//

import Foundation
import UIKit

class CategoryViewController: UIViewController
{
    
    
    @IBOutlet weak var lblShopstyle: UILabel!
    
    @IBAction func btnClothes(_ sender: UIButton)
    {
    }
    @IBAction func btnFootwear(_ sender: UIButton)
    {
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToCategory(segue: UIStoryboardSegue) {
        print("backtoCategory")
    }
    
    
    
}
