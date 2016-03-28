//
//  DetailViewController.swift
//  AlphaCamp_movieapp_practice
//
//  Created by Ka Ho on 28/3/2016.
//  Copyright © 2016 Ka Ho. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var movieDescription: UITextView!
    
    var imageID: String!
    var descriptionText: String!
    var detailsURL: String!
    var movieName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = movieName
        let photoResource = NSData(contentsOfURL: NSURL(string: "https://movie.yahoo-leisure.hk/assets/poster/" + imageID + ".jpg")!)
        coverImage.image = UIImage(data: photoResource!)
        movieDescription.text = descriptionText
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showWeb" {
            let controller = segue.destinationViewController as! WebViewController
            controller.responseURL = detailsURL
        }
    }
    
}
