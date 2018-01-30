//
//  NewsViewController.swift
//  DemoVistival
//
//  Created by mobapp07 on 30/01/2018.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var newsLijst: [News] = [News]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var string1:String = "Grammys 2018 Winners: The Complete List"
        var string2:String = "41 Things You Didn't See on TV at Grammys 2018"
        var string3:String = "Grammys 2018 Performances: From Lady Gaga to 'Despacito' and More"
        var string4:String = "Grammys 2018: Photos From The Red Carpet"
        var string5:String = "Grammys 2018: The Party Diary"
        
        var body1:String = "While JAY-Z entered Sunday as the top nominee, it was Bruno Mars and Kendrick Lamar who left the night's biggest winners. But with 80-plus awards to hand out, there were plenty of victors."
        
        var body2:String = "While JAY-Z entered Sunday as the top nominee, it was Bruno Mars and Kendrick Lamar who left the night's biggest winners. But with 80-plus awards to hand out, there were plenty of victors."
        
        var body3:String = "While JAY-Z entered Sunday as the top nominee, it was Bruno Mars and Kendrick Lamar who left the night's biggest winners. But with 80-plus awards to hand out, there were plenty of victors."
        
        var body4:String = "While JAY-Z entered Sunday as the top nominee, it was Bruno Mars and Kendrick Lamar who left the night's biggest winners. But with 80-plus awards to hand out, there were plenty of victors."
        
        var body5:String = "While JAY-Z entered Sunday as the top nominee, it was Bruno Mars and Kendrick Lamar who left the night's biggest winners. But with 80-plus awards to hand out, there were plenty of victors."
        
        
        

        newsLijst = [News.init(title: string1, datum: "27/01/2018", body:body1, newsImageName: "jezus.jpg"),
        News.init(title: string2, datum:"27/01/2018" , body: body2, newsImageName: "jezus.jpg"),
        News.init(title: string3, datum:"27/01/2018", body: body3, newsImageName: "jezus.jpg"),
        News.init(title: string4, datum: "28/01/2018", body: body4, newsImageName: "jezus.jpg"),
        News.init(title: string5, datum: "28/01/2018", body: body5, newsImageName: "jezus.jpg")]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsLijst.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_3")
        
        let currentNews: News = newsLijst[indexPath.row]
        cell?.textLabel?.text = currentNews.title
        cell?.detailTextLabel?.text = currentNews.datum
        cell?.imageView?.image = currentNews.newsImage
        
        return cell!
    }
    
    
    
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let destination:NewsDetailViewController = segue.destination as! NewsDetailViewController
        
        let cell = sender as! UITableViewCell
        let index = tableView.indexPath(for: cell)?.row
        let doorTeGevenNews = newsLijst[index!]
        
        destination.news = doorTeGevenNews
        
        
        
        
    }
    

}
