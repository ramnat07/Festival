//
//  DetailsViewController.swift
//  DemoVistival
//
//  Created by mobapp07 on 29/01/2018.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var artist:Artist?
    
    
    
    @IBOutlet weak var artistImage: UIImageView!
    
    
    @IBOutlet weak var stageLabel: UILabel!
    
    
    @IBOutlet weak var artistDescription: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        artistImage.image = artist?.artistImage
        //https://stackoverflow.com/questions/24701075/swift-convert-enum-value-to-string        
        stageLabel.text = artist?.stage.rawValue                   //"\(artist?.stage)"
        artistDescription.text = artist?.description
        
        
        
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
