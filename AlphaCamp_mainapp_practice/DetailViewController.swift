//
//  DetailViewController.swift
//  AlphaCamp_mainapp_practice
//
//  Created by Ka Ho on 25/3/2016.
//  Copyright © 2016 Ka Ho. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var movieWebView: UIWebView!
    @IBOutlet var activity: UIActivityIndicatorView!
    @IBOutlet weak var loadingLabel: UILabel!
    
    var responseURL:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController!.navigationBar.translucent = false
        
        responseURL = "https://movie.yahoo-leisure.hk/movie/details/" + responseURL
        let request = NSURLRequest(URL: NSURL(string: responseURL.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!)!)
        
        movieWebView.loadRequest(request)
        movieWebView.delegate = self
        loadingLabel.hidden = true   
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        activity.hidden = false
        activity.startAnimating()
        loadingLabel.hidden = false
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        activity.hidden = true
        activity.stopAnimating()
        loadingLabel.hidden = true
    }

    override func viewWillAppear(animated: Bool) {
    }
}
