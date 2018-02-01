//
//  Day1ViewController.swift
//  DemoVistival
//
//  Created by mobapp07 on 29/01/2018.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import UIKit

class Day1ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var artists:[Artist] = ArtistLineUp.artistLineUp
    var day1List:[Artist] = [Artist]()
    @IBOutlet weak var tableview: UITableView!
    
    
    ///////////var artistLijst:[Artist] = [Artist]()
    
    
    
    
    //let formatter = DateFormatter()
    
    //let dateFormat = DateFormatter()
    
    
    // let dateFormat = DateFormatter.init();
    //dateFormat.dateStyle = .medium
    //let geformateerdeDatum:String = dateFormat.string(from: birthDate)
    
    
    func dayOne() {
        
        for artist in artists {
            if artist.beginDate == "27/01/2018" {
                day1List.append(artist)
            }
            
        }
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
           
        dayOne()
        
        
         self.title = "Day One"
     
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return day1List.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_1")
        
        let currentArtist: Artist = day1List[indexPath.row]
        
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
        let doorTeGevenArtist = day1List[index!]
        
        destination.artist = doorTeGevenArtist
        
        
    }
    

}
