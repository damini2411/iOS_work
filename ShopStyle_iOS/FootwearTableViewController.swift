//
//  FootwearTableViewController.swift
//  Phase_1
//
//  Created by Damini Dholakiya on 2017-07-04.
//  Copyright © 2017 Damini Dholakiya. All rights reserved.
//

import Foundation
import UIKit

class FootwearTableViewController: UIViewController, UITableViewDataSource,UITableViewDelegate
{
    
    
    @IBOutlet weak var footwearTableview: UITableView!
    
    
    var data : [Product] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.footwearTableview.delegate = self
        self.footwearTableview.dataSource = self
        
        loadData()
    
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FootwearTableViewCell", for: indexPath) as? FootwearTableViewCell
        
        
        let ProductData = data[indexPath.row]
        
        
        cell?.lblFootwearName.text = ProductData.productName//formatter.string(from: eventData.eventDate)
        cell?.lblFootwearPrice.text = ProductData.productPrice
        cell?.imgFootwear?.image = ProductData.productPhoto
        
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier != nil {
            if let productDetailViewController = segue.destination as? ProductDetailViewController
            {
                if let selectedproductcell =  sender as? FootwearTableViewCell
                {
                    if let indexpath = footwearTableview.indexPath(for: selectedproductcell)
                    {
                        let selectedproduct = data[indexpath.row]
                        
                        productDetailViewController.product = selectedproduct
                    }else{
                        fatalError("Error 1")
                    }
                }else{
                    fatalError("Error 2")
                }
            }else{
                if let mapViewController = segue.destination as? MapViewController{
                    if let selectedproductcell =  sender as? UITableViewCell
                    {
                        if let indexpath = footwearTableview.indexPath(for: selectedproductcell)
                        {
                            let selectedproduct = data[indexpath.row]
                            
                            mapViewController.product = selectedproduct
                        }else{
                            fatalError("Error 1")
                        }
                    }//else{
                      //  fatalError("Error 2")
                   // }
                }else{
                    fatalError("Error")
                }
            }
        }else{
            fatalError("Error 4")
        }
    }
    
    //    //method to run when tableview cell is tapped
    //    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //        self.performSegue(withIdentifier: "clickEventDetail", sender: self)
    //    }
    
    
    private func loadData()
    { 
        let footwearImage1 = UIImage(named: "footwear1")
        let footwearImage2 = UIImage(named: "footwear2")
        let footwearImage3 = UIImage(named: "footwear3")
        let footwearImage4 = UIImage(named: "footwear4")
        
        let fproduct1 = Product(productName : "Casual", productPrice : "$20", productPhoto : footwearImage1!, productColor : "Violet", productMaterial : "Leather", latitude: 43.7363, longitude: -79.3498)
        let fproduct2 = Product(productName : "Flat shoes ", productPrice : "$40", productPhoto : footwearImage2!, productColor : "Violet", productMaterial : "Leather", latitude: 43.7615, longitude: -79.411)
        let fproduct3 = Product(productName : "Pencil hills ", productPrice : "$50", productPhoto : footwearImage3!, productColor : "Blue", productMaterial : "Silk", latitude: 43.7764258, longitude: -79.2317521)
        let fproduct4 = Product(productName : "Silk Shirt ", productPrice : "$60", productPhoto : footwearImage4!, productColor : "Pink", productMaterial : "Cotton", latitude: 43.595310, longitude: -79.640579)

        
        data.append(fproduct1)
        data.append(fproduct2)
        data.append(fproduct3)
        data.append(fproduct4)
    }

    @IBAction func BackToCategory(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
