//
//  Artist.swift
//  DemoVistival
//
//  Created by mobapp07 on 29/01/2018.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import Foundation
import UIKit

class Artist {

    var name: String
    var beginDate: String
    var beginHour: String
    var description: String
    var stage: Stage
    var artistImage: UIImage
    
    init(name:String, beginDate:String, beginHour:String, description: String, stage: Stage, artistImageName:String ) {
        self.name = name
        self.beginDate = beginDate
        self.beginHour = beginHour
        self.description = description
        self.stage = stage
        self.artistImage = UIImage.init(named: artistImageName)!
        
    }
}
