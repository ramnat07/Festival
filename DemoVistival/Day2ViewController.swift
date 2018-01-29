//
//  Day2ViewController.swift
//  DemoVistival
//
//  Created by mobapp07 on 29/01/2018.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import UIKit

class Day2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var artistLijst:[Artist] = [Artist]()
    
    let formatter = DateFormatter()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //GEPIKT BIJ   https://stackoverflow.com/questions/24089999/how-do-you-create-a-swift-date-object
        
        formatter.dateFormat = "dd/MM/yyyy"
        let day2 = formatter.date(from: "28/01/2018")
        
        formatter.dateFormat = "HH:mm"
        let hour1 = formatter.date(from:"13:00")
        let hour2 = formatter.date(from: "13:30")
        let hour3 = formatter.date(from: "14:00")
        let hour4 = formatter.date(from: "14:30")
        
        
        artistLijst = [Artist.init(name: "Eminem", beginDate: day2!, beginHour: hour1!, description: "popArtist_blabla", stage: Stage.STAGE_1, artistImageName: "jezus.jpg"),                              Artist.init(name: "Lorde", beginDate: day2!, beginHour:hour2! , description: "klassicArtist_blabla", stage: Stage.STAGE_2, artistImageName: "jezus.jpg"),
                       Artist.init(name: "Jay-Z", beginDate: day2!, beginHour: hour3!, description: "Madonna, volledige naam Madonna Louise Veronica Ciccone", stage: Stage.STAGE_3, artistImageName: "jezus.jpg"),
                       Artist.init(name: "Enrique Iglesias ", beginDate: day2!, beginHour: hour4!, description: "sexy zanger", stage: .STAGE_4, artistImageName: "jezus.jpg")]
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artistLijst.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_2")
        
        let currentArtist: Artist = artistLijst[indexPath.row]
        
        cell?.textLabel?.text = currentArtist.name
        cell?.detailTextLabel?.text = "\(currentArtist.beginHour)"
        cell?.imageView?.image = currentArtist.artistImage
        
        return cell!
}
}
