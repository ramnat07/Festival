//
//  Day1ViewController.swift
//  DemoVistival
//
//  Created by mobapp07 on 29/01/2018.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import UIKit

class Day1ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
    var artistLijst:[Artist] = [Artist]()
    
    //let formatter = DateFormatter()
    
    //let dateFormat = DateFormatter()
    
    
    // let dateFormat = DateFormatter.init();
    //dateFormat.dateStyle = .medium
    //let geformateerdeDatum:String = dateFormat.string(from: birthDate)
    
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
        let hour1:String = "13:00"
        let hour2:String = "13:30"
        let hour3:String = "14:00"
        let hour4:String = "14:30"
        
        var artistDescription:String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
        
        //artistDescription textView opvullen
        artistDescription += artistDescription + artistDescription
        
        
        artistLijst = [Artist.init(name: "Britney Spears", beginDate: day1, beginHour: hour1, description: artistDescription, stage: Stage.STAGE_1, artistImageName: "jezus.jpg"),                              Artist.init(name: "Celine Dion", beginDate: day1, beginHour:hour2 , description: artistDescription, stage: Stage.STAGE_2, artistImageName: "jezus.jpg"), Artist.init(name: "Madonna", beginDate: day1, beginHour: hour3, description: artistDescription, stage: Stage.STAGE_3, artistImageName: "jezus.jpg"), Artist.init(name: "Sting", beginDate: day1, beginHour: hour4, description: artistDescription, stage: .STAGE_4, artistImageName: "jezus.jpg")]
        //scherm opvullen met artiesten
        artistLijst += artistLijst + artistLijst + artistLijst
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadArtist()
         self.title = "Day One"
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artistLijst.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_1")
        
        let currentArtist: Artist = artistLijst[indexPath.row]
        
        cell?.textLabel?.text = currentArtist.name
        cell?.detailTextLabel?.text = currentArtist.beginHour + " on " + currentArtist.stage.rawValue
        cell?.imageView?.image = currentArtist.artistImage
        
        return cell!
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let destination: DetailsViewController = segue.destination as! DetailsViewController
        
        let cell = sender as! UITableViewCell
        let index = tableview.indexPath(for: cell)?.row
        let doorTeGevenArtist = artistLijst[index!]
        
        destination.artist = doorTeGevenArtist
        
        
    }
    

}
