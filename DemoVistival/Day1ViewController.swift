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
    
    let formatter = DateFormatter()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //GEPIKT BIJ   https://stackoverflow.com/questions/24089999/how-do-you-create-a-swift-date-object
        
        formatter.dateFormat = "dd/MM/yyyy"
        let day1 = formatter.date(from: "27/01/2018")
        
        formatter.dateFormat = "HH:mm"
        let hour1 = formatter.date(from:"13:00")
        let hour2 = formatter.date(from: "13:30")
        let hour3 = formatter.date(from: "14:00")
        let hour4 = formatter.date(from: "14:30")
        
        
        artistLijst = [Artist.init(name: "Britney Spears", beginDate: day1!, beginHour: hour1!, description: "popArtist_blabla", stage: Stage.STAGE_1, artistImageName: "jezus.jpg"),                              Artist.init(name: "Celine Dion", beginDate: day1!, beginHour:hour2! , description: "klassicArtist_blabla", stage: Stage.STAGE_2, artistImageName: "jezus.jpg"),
        Artist.init(name: "Madonna", beginDate: day1!, beginHour: hour3!, description: "Madonna, volledige naam Madonna Louise Veronica Ciccone", stage: Stage.STAGE_3, artistImageName: "jezus.jpg"),
        Artist.init(name: "Sting", beginDate: day1!, beginHour: hour4!, description: "sexy zanger", stage: .STAGE_4, artistImageName: "jezus.jpg")]
        
        
        
        

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_1")
        
        let currentArtist: Artist = artistLijst[indexPath.row]
        
        cell?.textLabel?.text = currentArtist.name
        cell?.detailTextLabel?.text = "\(currentArtist.beginHour)"
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
