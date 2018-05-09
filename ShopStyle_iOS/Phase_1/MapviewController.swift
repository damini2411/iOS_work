//
//  MapviewController.swift
//  Phase_1
//
//  Created by Damini Dholakiya on 2017-07-04.
//  Copyright © 2017 Damini Dholakiya. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var mapObj: MKMapView!
    
    var product : Product?
    
    var mapManager =   CLLocationManager()
    
    var annotations : [MKPointAnnotation] = []
    
    var latitude: Double = 43.7363
    var longitude: Double = -79.3498

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        loadMap()
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }

    
    @IBAction func GoToProductList(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func loadMap()  {
        
        let userAnnotation = MKPointAnnotation()
        userAnnotation.coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        mapObj.addAnnotation(userAnnotation)
        annotations.append(userAnnotation)
        
        // Here we define the map's zoom. The value 0.01 is a pattern
        let zoom:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        
        // Store latitude and longitude received from smartphone
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        // Based on myLocation and zoom define the region to be shown on the screen
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, zoom)
        
        // Setting the map itself based previous set-up
        mapObj.setRegion(region, animated: true)
        
    }
    
    // Drawing a red circle to pin on map
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let circleRenderer = MKCircleRenderer(overlay: overlay)
        circleRenderer.strokeColor = UIColor.red
        circleRenderer.lineWidth = 1.0
        return circleRenderer
    }

    
}
