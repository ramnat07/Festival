//
//  MapsViewController.swift
//  DemoVistival
//
//  Created by mobapp07 on 29/01/2018.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import UIKit
import MapKit


class MapsViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager:CLLocationManager = CLLocationManager()
    
    
    func checkLocationOk() {
    
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            mapView.showsUserLocation = true;
        }
        else{
            locationManager.requestWhenInUseAuthorization()
        }
    

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        checkLocationOk()
        
        let centerCoord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.158269, 2.760753)
        
        let centerSpan = MKCoordinateSpanMake(0.010, 0.010)
        
        let centerRegion = MKCoordinateRegionMake(centerCoord, centerSpan)
        
        mapView.region = centerRegion
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
