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
    
    //let formatter = DateFormatter()
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
    
    func loadArtist(){
        //GEPIKT BIJ   https://stackoverflow.com/questions/24089999/how-do-you-create-a-swift-date-object
        
        /*formatter.dateFormat = "dd/MM/yyyy"
        let day2 = formatter.date(from: "28/01/2018")
        
        formatter.dateFormat = "HH:mm"
        let hour1 = formatter.date(from:"13:00")
        let hour2 = formatter.date(from: "13:30")
        let hour3 = formatter.date(from: "14:00")
        let hour4 = formatter.date(from: "14:30")
 */
        
        let day2:String = "28/01/2018"
        let hour1:String = "12:00"
        let hour2:String = "12:30"
        let hour3:String = "13:00"
        let hour4:String = "13:30"
        
        var artistDescription:String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
        
        //artistDescription textView opvullen
        artistDescription += artistDescription + artistDescription
        
        
        
        artistLijst = [Artist.init(name: "Eminem", beginDate: day2, beginHour: hour1, description: artistDescription, stage: Stage.STAGE_1,artistImageName: "eminem1.jpg"), Artist.init(name: "Lorde", beginDate: day2, beginHour:hour2 , description: artistDescription, stage: Stage.STAGE_2, artistImageName: "lorde1.jpg"), Artist.init(name: "Jay-Z", beginDate: day2, beginHour: hour3, description: artistDescription, stage: Stage.STAGE_3, artistImageName: "jayz1.jpg"), Artist.init(name: "Enrique Iglesias ", beginDate: day2, beginHour: hour4, description: artistDescription, stage: .STAGE_4, artistImageName: "enrique1.jpg")]
      //scherm opvullen met artiesten
        artistLijst += artistLijst + artistLijst + artistLijst
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadArtist()
        
        self.title = "Day Two"
       
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
        cell?.detailTextLabel?.text = currentArtist.beginHour + " on " + currentArtist.stage.rawValue
        cell?.imageView?.image = currentArtist.artistImage
        
        return cell!
}
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination: Details2ViewController = segue.destination as! Details2ViewController
        
        let cell = sender as! UITableViewCell
        
        let index = tableview.indexPath(for: cell)?.row
        
        let doortegevenArtist = artistLijst[index!]
        destination.artist = doortegevenArtist
        

        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
