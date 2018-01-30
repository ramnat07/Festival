//
//  News.swift
//  DemoVistival
//
//  Created by mobapp07 on 30/01/2018.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import Foundation
import  UIKit

class News {
    
    var title: String
    var datum: String
    var body: String
    var newsImage: UIImage
    
    init(title:String,datum: String, body: String, newsImageName:String) {
        
        self.title = title
        self.datum = datum
        self.body = body
        self.newsImage = UIImage.init(named: newsImageName)!
    }
    
}



