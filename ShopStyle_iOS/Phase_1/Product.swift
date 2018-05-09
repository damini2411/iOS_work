//
//  Product.swift
//  Phase_1
//
//  Created by Damini Dholakiya on 2017-07-03.
//  Copyright © 2017 Damini Dholakiya. All rights reserved.
//

import Foundation
import UIKit

class Product
{
    
    public private(set) var productName : String
    public private(set) var productPrice : String
    public private(set) var productPhoto : UIImage
    public private(set) var productColor : String
    public private(set) var productMaterial : String
    public private(set) var latitude       : Double
    public private(set) var longitude      : Double

    
    init(productName : String, productPrice : String, productPhoto : UIImage, productColor : String, productMaterial : String, latitude : Double, longitude : Double )
    {
    self.productName = productName
    self.productPrice = productPrice
    self.productPhoto = productPhoto
    self.productColor = productColor
    self.productMaterial = productMaterial
    self.latitude = latitude
    self.longitude = longitude
    }
    
    func getproductName() -> String
    {
        return productName
    }
    
    func  setproductName(_ productName : String)
    {
        self.productName = productName
    }
    
    func getproductPrice() -> String
    {
        return productPrice
    }
    
    func setproductPrice(_ productPrice : String)
    {
        self.productPrice = productPrice
    }
    
    func getproductPhoto() -> UIImage
    {
        return productPhoto
    }
    
    func setproductPhoto(_ productPhoto : UIImage)
    {
        self.productPhoto = productPhoto
    }
    func getproductColor() -> String
    {
        return productColor
    }
    func setproductColor(_ ProductColor : String)
    {
        self.productColor = ProductColor
    }
    func getproductMaterial() -> String
    {
        return productMaterial
    }
    func setproductMaterial(_ ProductMaterial : String)
    {
        self.productColor = ProductMaterial
    }




}
