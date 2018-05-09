//
//  ProductDetailViewController.swift
//  Phase_1
//
//  Created by Damini Dholakiya on 2017-07-03.
//  Copyright © 2017 Damini Dholakiya. All rights reserved.
//

import Foundation
import UIKit
import os.log


class ProductDetailViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource

{
   
    @IBOutlet weak var btnBack: UIButton!
   
    @IBOutlet weak var imgProduct: UIImageView!
    
    @IBOutlet weak var lblSizes: UILabel!
    @IBOutlet weak var dropDOwnSizes: UIPickerView!
    @IBOutlet weak var lblColors: UILabel!
    @IBOutlet weak var lblColorName: UILabel!
    @IBOutlet weak var lblMaterial: UILabel!
    @IBOutlet weak var lblMaterialName: UILabel!
    @IBOutlet weak var lbldetailProName: UILabel!
    @IBOutlet weak var lbldetailProPrice: UILabel!
    
    var pickerDataSource = ["S", "M","L","XL"]

    
    @IBAction func btnBuyNow(_ sender: UIButton)
    {
        
    }
       var product : Product?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.dropDOwnSizes.dataSource = self;
        self.dropDOwnSizes.delegate = self;
        
        if product != nil{
            
            lbldetailProName.text = product?.productName
            lbldetailProPrice.text = product?.productPrice
            imgProduct.image = product?.productPhoto
            lblColorName.text = product?.productColor
            lblMaterialName.text = product?.productMaterial
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier != nil {
            if let paymentViewController = segue.destination as? PaymentViewController
            {
                //let selectedproduct = data[indexpath.row]
                
                paymentViewController.products = product
            }else{
                fatalError("Error 3")
            }
        }else{
            fatalError("Error 4")
        }
        
        
    }
    
    // DataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return pickerDataSource.count;
        
    }
    
    // Delegate
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row]
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        //self.lblSizes.text = self.pickerDataSource[row]
        
    }

    @IBAction func GoToTableView(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
