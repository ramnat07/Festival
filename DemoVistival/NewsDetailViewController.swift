//
//  NewsDetailViewController.swift
//  DemoVistival
//
//  Created by mobapp07 on 30/01/2018.
//  Copyright © 2018 mobapp07. All rights reserved.
//

import UIKit

class NewsDetailViewController: UIViewController {
    
    var news:News?
    
    
    @IBOutlet weak var imageViewNews: UIImageView!
    
    
    @IBOutlet weak var newsTitleLabel: UILabel!
    
    
    @IBOutlet weak var newsBodyTextView: UITextView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewNews.image = news?.newsImage
        newsTitleLabel.text = news?.title
        newsBodyTextView.text = news?.body
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
