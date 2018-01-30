//
//  MapPoints.swift
//  DemoVistival
//
//  Created by mobapp07 on 30/01/2018.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import Foundation
import MapKit

class MapPoint:NSObject, MKAnnotation {

    var coordinate: CLLocationCoordinate2D
    var pinColor: UIColor
    var title: String?
    var image:UIImage?
    
    /*init(coord:CLLocationCoordinate2D,title:String, imageNaam:String) {
        self.coordinate = coord
        self.image = UIImage.init(named: imageNaam)
        self.pinColor = .clear
    }*/
    
    init(pinColor:UIColor,coord: CLLocationCoordinate2D, title: String) {
        
    self.coordinate = coord
    self.title = title
    self.pinColor = pinColor
    }



}
