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
    
    
    
    func loadNews() {
        
        
        let string1:String = "Grammys 2018 Winners: The Complete List"
        let string2:String = "41 Things You Didn't See on TV at Grammys 2018"
        let string3:String = "Grammys 2018 Performances: From Lady Gaga to 'Despacito' and More"
        let string4:String = "Grammys 2018: Photos From The Red Carpet"
        let string5:String = "Grammys 2018: The Party Diary"
        let string6:String = "41 Things You Didn't See on TV at Grammys 2018"

        
        
        var bodyText:String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
        
        //body opvullen met text
        bodyText += bodyText + bodyText
        
        //indien je hebt meerdere body`s dan mag je nog extra body toevoegen,bv body1,2,3...
        let body1:String = bodyText
        
        
        
        
        
        newsLijst = [News.init(title: string1, datum: "27/01/2018", body:body1, newsImageName: "news1.jpg"),
                     News.init(title: string2, datum:"27/01/2018" , body: body1, newsImageName: "news2.jpg"),
                     News.init(title: string3, datum:"27/01/2018", body: body1, newsImageName: "news1.jpg"),
                     News.init(title: string4, datum: "28/01/2018", body: body1, newsImageName: "news2.jpg"),
                     News.init(title: string5, datum: "28/01/2018", body: body1, newsImageName: "news1.jpg"),
                     News.init(title: string6, datum: "28/01/2018", body: body1, newsImageName: "news2.jpg")]
        
        //scherm opvullen met newsitems
        newsLijst += newsLijst + newsLijst + newsLijst
       
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "News"
        loadNews()
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
