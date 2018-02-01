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
    
        
        
        //stages
        let stage1Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.158080, 2.758124)
        let stage1Point = MapPoint.init(pinColor: UIColor.blue, coord: stage1Coord , title: Stage.STAGE_1.rawValue)
        
        let stage2Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.157354, 2.764744)
        let stage2Point = MapPoint.init(pinColor: UIColor.blue, coord: stage2Coord , title: Stage.STAGE_2.rawValue)
        
        let stage3Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.159238, 2.761890)
        let stage3Point = MapPoint.init(pinColor: UIColor.blue, coord: stage3Coord , title: Stage.STAGE_3.rawValue)
        
        let stage4Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.156573, 2.761418)
        let stage4Point = MapPoint.init(pinColor: UIColor.blue, coord: stage4Coord , title: Stage.STAGE_4.rawValue)
        
        
        
        //standjes
        let standje1Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.159049, 2.764658)
        let standje1Point = MapPoint.init(pinColor: UIColor.green, coord: standje1Coord , title: "Panda's Chinese loempias")
        
        let standje2Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.157017, 2.762963)
        let standje2Point = MapPoint.init(pinColor: UIColor.green, coord: standje2Coord , title: "Luigi's gehaktballen")
        
        let standje3Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.157327, 2.765302)
        let standje3Point = MapPoint.init(pinColor: UIColor.green, coord: standje3Coord , title: "Jos' wafels")
        
        let standje4Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.158363, 2.760345)
        let standje4Point = MapPoint.init(pinColor: UIColor.green, coord: standje4Coord , title: "Ivans vodka")
        
        
        //wc
        
        let wc1Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.158201, 2.762963)
        let wc1Point = MapPoint.init(pinColor: UIColor.red, coord: wc1Coord , title: "WC")
        
        let wc2Coord:CLLocationCoordinate2D = CLLocationCoordinate2DMake(51.157206, 2.760066)
        let wc2Point = MapPoint.init(pinColor: UIColor.red, coord: wc2Coord , title: "WC")
        
        
        
        
        
        mapView.addAnnotation(stage1Point)
        mapView.addAnnotation(stage2Point)
        mapView.addAnnotation(stage3Point)
        mapView.addAnnotation(stage4Point)
        
        mapView.addAnnotation(standje1Point)
        mapView.addAnnotation(standje2Point)
        mapView.addAnnotation(standje3Point)
        mapView.addAnnotation(standje4Point)
        
        mapView.addAnnotation(wc1Point)
        mapView.addAnnotation(wc2Point)
               
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        //eerst gaan kijken van welke type is de annotatie?
        //en dan ik een variabele voor de annotatie
        //if let -> initialeseert variabele en kijkt meteen na of alles correct is angemaakt
        if let myAnnotation = annotation as? MapPoint{
            
            //ik ga kijken of er al een opmaak was, indien ja -> hergebruiken,zo niet -> aanmaken
            //deque -> verwacht identiefier om te weten welke opmaak
            let identifier = "Pin"
            
            if let view = mapView.dequeueReusableAnnotationView(withIdentifier: identifier){
                //opmaak bestond
                view.annotation = myAnnotation
                
                return view
            }
            else{
                //opmaak bestond nog niet, aanmaken!
                let view = MKPinAnnotationView(annotation: myAnnotation, reuseIdentifier:identifier)
                
                //nu de view is gemaakt kan alles gefinetuned worden
                view.canShowCallout = true
                view.animatesDrop = true
                view.pinTintColor = myAnnotation.pinColor
                
                /*//experiment
                view.image = myAnnotation.image
                */
                return view
            }
        }
        
        return nil
 
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
