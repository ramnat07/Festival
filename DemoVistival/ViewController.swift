//
//  ViewController.swift
//  DemoVistival
//
//  Created by mobapp07 on 29/01/2018.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageview: UIImageView!
    
    //vergeet niet om "User Interaction Enabled" aan te vinken in attribute inspector van imageview
    var fotoLijst:[UIImage] = [UIImage]()
    var index:Int = 0
    
    func loadImages() {
        let img1:UIImage = UIImage.init(named: "Home.png")!
        let img2:UIImage = UIImage.init(named: "Home2.jpg")!
        let img3:UIImage = UIImage.init(named: "Home3.jpg")!
        let img4:UIImage = UIImage.init(named: "Home4.jpg")!
        
        fotoLijst += [img1,img2,img3,img4]
        
        imageview.image = fotoLijst[index]
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Vistival"
        
        loadImages()
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func leftSwipe(_ sender: UISwipeGestureRecognizer) {
        if index > 0 {
            index -= 1
        }
        else {
            index = fotoLijst.count - 1
        }
        imageview.image = fotoLijst[index]
    }

    
    @IBAction func rightSwipe(_ sender: UISwipeGestureRecognizer) {
        if index < fotoLijst.count - 1 {
            index += 1
        }
        else {
            index = 0
        }
        imageview.image = fotoLijst[index]
    }
    
   
}

