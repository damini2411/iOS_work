//
//  ClothesViewController.swift
//  Phase_1
//
//  Created by Damini Dholakiya on 2017-07-03.
//  Copyright © 2017 Damini Dholakiya. All rights reserved.
//

import Foundation
import UIKit

class ClothesTableViewController: UIViewController, UITableViewDataSource,UITableViewDelegate
{
    
    @IBOutlet weak var clothTableView: UITableView!
   
    var data : [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.clothTableView.delegate = self
        self.clothTableView.dataSource = self
        
        loadData()
    
}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClothesTableViewCell", for: indexPath) as? ClothesTableViewCell
        
        
        let ProductData = data[indexPath.row]
        
        
        cell?.lblProductName.text = ProductData.productName//formatter.string(from: eventData.eventDate)
        cell?.lblProductPrice.text = ProductData.productPrice
        cell?.imgproduct?.image = ProductData.productPhoto
        
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier != nil
        {
            
            if let productDetailViewController = segue.destination as? ProductDetailViewController
            {
                if let selectedproductcell =  sender as? ClothesTableViewCell
                {
                    if let indexpath = clothTableView.indexPath(for: selectedproductcell)
                    {
                        let selectedproduct = data[indexpath.row]
                        
                        productDetailViewController.product = selectedproduct
                    }
                    else
                    {
                        fatalError("Error 1")
                    }
                }
                else
                {
                fatalError("Error 2")
                }
            }
            else
            {
                if let mapViewController = segue.destination as? MapViewController{
                    if let selectedproductcell =  sender as? FootwearTableViewCell
                    {
                        if let indexpath = clothTableView.indexPath(for: selectedproductcell)
                        {
                            let selectedproduct = data[indexpath.row]
                            
                            mapViewController.product = selectedproduct
                        }
                        else
                        {
                            fatalError("Error 1")
                        }
                    }
//                    else
//                    {
//                        fatalError("Error 2")
//                    }
                }
                else
                {
                    fatalError("Error")
                }
            }
        }
        else
        {
            fatalError("Error 4")
        }
    }

    
//            fatalError("Error 3")
//            }
//        }else{
//        fatalError("Error 4")
//        }
//    }
    

    @IBAction func GoBackToCategory(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    private func loadData()
    {
        let productImage1 = UIImage(named: "productImage1")
        let productImage2 = UIImage(named: "productImage2")
        let productImage3 = UIImage(named: "productImage3")
        let productImage4 = UIImage(named: "productImage4")
        let product1 = Product(productName : "Party Wear", productPrice : "$25", productPhoto : productImage1!, productColor: "BlackWhite", productMaterial: "Cotton", latitude: 43.7615, longitude: -79.411)
        let product2 = Product(productName : "One piese ", productPrice : "$50", productPhoto : productImage2!, productColor: "Violet", productMaterial: "Silk", latitude: 43.7363, longitude: -79.3498)
        let product3 = Product(productName : "Flower Print ", productPrice : "$60", productPhoto : productImage3!, productColor: "White", productMaterial: "Lenon", latitude: 43.7764258, longitude: -79.2317521)
        let product4 = Product(productName : "Silk Shirt ", productPrice : "$20", productPhoto : productImage4!, productColor: "White", productMaterial: "Woolen", latitude: 43.595310, longitude: -79.640579)

        data.append(product1)
        data.append(product2)
        data.append(product3)
        data.append(product4)
    }


}
