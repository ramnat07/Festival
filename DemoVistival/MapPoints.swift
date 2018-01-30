//
//  MapPoints.swift
//  DemoVistival
//
//  Created by mobapp07 on 30/01/2018.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import Foundation
import MapKit

class MapPoint:NSObject, MKAnnotation{

    var coordinate: CLLocationCoordinate2D
    
    var title: String?
    
    init(coord: CLLocationCoordinate2D, title: String) {
        
    self.coordinate = coord
    self.title = title
    }



}
