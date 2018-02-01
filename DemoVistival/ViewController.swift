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
        
        let img2:UIImage = UIImage.init(named: "Home2.jpg")!
        let img3:UIImage = UIImage.init(named: "Home3.jpg")!
        let img4:UIImage = UIImage.init(named: "Home4.jpg")!
        
        fotoLijst += [img2,img3,img4]
        
        imageview.image = fotoLijst[index]
        
    }
    
    
    
    func loadArtist() {
        
        //GEPIKT BIJ   https://stackoverflow.com/questions/24089999/how-do-you-create-a-swift-date-object
        
        /*formatter.dateFormat = "dd/MM/yyyy"
         let day1:Date = formatter.date(from: "27/01/2018")!
         let day1String:String = formatter.string(from: day1)
         
         
         
         
         formatter.dateFormat = "dd/MM/yyyy HH:mm"
         let hour1:Date = formatter.date(from:"27/01/2018 13:00")!
         let hour1String:String = formatter.string(from: hour1)
         
         
         let hour2:Date = formatter.date(from: "27/01/2018 13:30")!
         let hour2String:String = formatter.string(from: hour2)
         
         let hour3:Date = formatter.date(from: "27/01/2018 14:00")!
         let hour3String:String = formatter.string(from: hour3)
         
         let hour4:Date = formatter.date(from: "27/01/2018 14:30")!
         let hour4String:String = formatter.string(from: hour4)
         
         */
        
        /*formatter.dateStyle = .short
         formatter.timeStyle = .none
         formatter.locale = Locale.init(identifier: "UK")
         let geformateerdeDatum:String = formatter.string(from: day1!)
         
         */
        
        let day1:String = "27/01/2018"
        
        let day2:String = "28/01/2018"
        
        
        let hour1:String = "13:00"
        let hour2:String = "13:30"
        let hour3:String = "14:00"
        let hour4:String = "14:30"
        
        var artistDescription:String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
        
        //artistDescription textView opvullen
        artistDescription += artistDescription + artistDescription
        
        
        
        
        
        ArtistLineUp.artistLineUp = [Artist.init(name: "Britney Spears", beginDate: day1, beginHour: hour1, description: artistDescription, stage: Stage.STAGE_1, artistImageName: "britney1.jpg"),                              Artist.init(name: "Celine Dion", beginDate: day1, beginHour:hour2 , description: artistDescription, stage: Stage.STAGE_2, artistImageName: "celine1.jpg"), Artist.init(name: "Madonna", beginDate: day1, beginHour: hour3, description: artistDescription, stage: Stage.STAGE_3, artistImageName: "madonna1.jpg"), Artist.init(name: "Sting", beginDate: day1, beginHour: hour4, description: artistDescription, stage: .STAGE_4, artistImageName: "sting1.jpg"),Artist.init(name: "Eminem", beginDate: day2, beginHour: hour1, description: artistDescription, stage: Stage.STAGE_1,artistImageName: "eminem1.jpg"), Artist.init(name: "Lorde", beginDate: day2, beginHour:hour2 , description: artistDescription, stage: Stage.STAGE_2, artistImageName: "lorde1.jpg"), Artist.init(name: "Jay-Z", beginDate: day2, beginHour: hour3, description: artistDescription, stage: Stage.STAGE_3, artistImageName: "jayz1.jpg"), Artist.init(name: "Enrique Iglesias ", beginDate: day2, beginHour: hour4, description: artistDescription, stage: .STAGE_4, artistImageName: "enrique1.jpg")]
        
        
        //artiesten opvullen voor schermen
        ArtistLineUp.artistLineUp += ArtistLineUp.artistLineUp + ArtistLineUp.artistLineUp + ArtistLineUp.artistLineUp
               
        
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Vistival"
        
        loadImages()
        loadArtist()
        
        
        
        
        
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

