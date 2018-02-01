//
//  Day2ViewController.swift
//  DemoVistival
//
//  Created by mobapp07 on 29/01/2018.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import UIKit

class Day2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var artists:[Artist] = ArtistLineUp.artistLineUp
    var day2List:[Artist] = [Artist]()
    
    @IBOutlet weak var tableview: UITableView!
    
    
    func dayTwo() {
        
        for artist in artists {
            if artist.beginDate == "28/01/2018" {
                day2List.append(artist)
            }
            
        }
        
        
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dayTwo()
        
        self.title = "Day Two"
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return day2List.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_2")
        
        let currentArtist: Artist = day2List[indexPath.row]
        
        cell?.textLabel?.text = currentArtist.name
        cell?.detailTextLabel?.text = currentArtist.beginHour + " on " + currentArtist.stage.rawValue
        cell?.imageView?.image = currentArtist.artistImage
        
        return cell!
}
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination: Details2ViewController = segue.destination as! Details2ViewController
        
        let cell = sender as! UITableViewCell
        
        let index = tableview.indexPath(for: cell)?.row
        
        let doortegevenArtist = day2List[index!]
        destination.artist = doortegevenArtist
        

        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
