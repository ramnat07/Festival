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
    
    
    func createPins () {
        
        let stage1Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.158080, 2.758124)
        let stage1Point = MapPoint.init(coord: stage1Coord , title: Stage.STAGE_1.rawValue)
        
        let stage2Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.157354, 2.764744)
        let stage2Point = MapPoint.init(coord: stage2Coord , title: Stage.STAGE_2.rawValue)
        
        let stage3Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.159238, 2.761890)
        let stage3Point = MapPoint.init(coord: stage3Coord , title: Stage.STAGE_3.rawValue)
        
        let stage4Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.156573, 2.761418)
        let stage4Point = MapPoint.init(coord: stage4Coord , title: Stage.STAGE_4.rawValue)
        
        mapView.addAnnotation(stage1Point)
        mapView.addAnnotation(stage2Point)
        mapView.addAnnotation(stage3Point)
        mapView.addAnnotation(stage4Point)
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        checkLocationOk()
        createPins()
        
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
