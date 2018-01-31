//
//  InfoViewController.swift
//  DemoVistival
//
//  Created by mobapp03 on 31/01/18.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    
    @IBOutlet weak var infoImageView: UIImageView!
    
    
    @IBOutlet weak var infoTextView: UITextView!
    
    var infoText:String = ""
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Info"
        
        infoText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
        
        //textview opvullen met text
        infoText += infoText + infoText + infoText
        
        
        
        infoImageView.image = UIImage.init(named: "jezus.jpg")
        infoTextView.text = infoText
        
        
        
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
