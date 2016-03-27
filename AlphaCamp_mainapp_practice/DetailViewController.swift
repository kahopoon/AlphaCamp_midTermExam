//
//  DetailViewController.swift
//  AlphaCamp_mainapp_practice
//
//  Created by Ka Ho on 25/3/2016.
//  Copyright © 2016 Ka Ho. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieWebView: UIWebView!
    var responseURL:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        responseURL = "https://movie.yahoo-leisure.hk/movie/details/" + responseURL
        
        let request = NSURLRequest(URL: NSURL(string: responseURL.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!)!)
        
        movieWebView.loadRequest(request)
        self.navigationController!.navigationBar.translucent = false
    }
    
    override func viewWillAppear(animated: Bool) {
    }
}
