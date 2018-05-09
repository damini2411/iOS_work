//
//  PaymentViewController.swift
//  Phase_1
//
//  Created by Damini Dholakiya on 2017-07-04.
//  Copyright © 2017 Damini Dholakiya. All rights reserved.
//

import Foundation
import UIKit

class PaymentViewController: UIViewController
{
    
    @IBOutlet weak var imgPro: UIImageView!
    @IBOutlet weak var lblProName: UILabel!
    @IBOutlet weak var lblProPrice: UILabel!
    @IBOutlet weak var lblQuantity: UILabel!
        @IBOutlet weak var lblShipping: UILabel!
    
    @IBOutlet weak var lblPaymentProPrice: UILabel!
    
    @IBOutlet weak var lblproPrice: UILabel!
    
    var products : Product?
    
    @IBOutlet weak var btnPay: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if products != nil
        {
            lblProName.text = products?.productName
            lblProPrice.text = products?.productPrice
            lblPaymentProPrice.text = products?.productPrice
            lblproPrice.text = products?.productPrice
            imgPro.image = products?.productPhoto
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToProductDetail(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
