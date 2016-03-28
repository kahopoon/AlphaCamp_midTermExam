//
//  FirstViewController.swift
//  AlphaCamp_mainapp_practice
//
//  Created by Ka Ho on 25/3/2016.
//  Copyright © 2016 Ka Ho. All rights reserved.
//

import UIKit
import SDWebImage

class FirstViewController: UIViewController, UITableViewDataSource {
    
    let data = NSData(contentsOfURL: NSURL(string: "https://kahopoon.net/movie.php")!)
    var rawData = [[String:String]]()

    @IBOutlet weak var tableView: UITableView!
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rawData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MovieCell", forIndexPath: indexPath) as! MovieTableViewCell
        
        // Configure the cell...
        let currentData : Dictionary = self.rawData[indexPath.row]
        let photo_url = NSURL(string: "https://movie.yahoo-leisure.hk/assets/poster/" + currentData["cover"]! + ".jpg")

        cell.movieName.text = currentData["name"]
        cell.movieCast.text = "演員： " + currentData["cast"]!
        cell.movieDirector.text = "導演： " + currentData["director"]!
        cell.movieDuration.text = "片長： " + currentData["duration"]!
        cell.movieCover.sd_setImageWithURL(photo_url, placeholderImage: nil)
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetails" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let currentData : Dictionary = self.rawData[indexPath.row]
                let controller = segue.destinationViewController as! DetailViewController
                
                controller.imageID = currentData["cover"]
                controller.descriptionText = currentData["description"]
                controller.detailsURL = currentData["url"]! + "-" + currentData["name"]!
                controller.movieName = currentData["name"]
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        self.navigationItem.title = "本週新片"
        self.automaticallyAdjustsScrollViewInsets = false
        
        do {
            let object = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)
            if let dictionary = object as? [String: AnyObject] {
                readJSONObject(dictionary)
            }
        } catch {
            // Handle Error
        }
    }

    func readJSONObject(object: [String: AnyObject]) {
        guard let results = object["results"] as? [[String: AnyObject]] else { return }
        
        for result in results {
            guard let name = result["name"] as? String, let url = result["url"] as? String, let cover =  result["cover"] as? String, let director = result["director"] as? String, let cast = result["cast"] as? String, let duration = result["duration"] as? String, let description = result["description"] as? String else { break }
            rawData.append(["name":name, "url":url, "cover":cover, "director":director, "cast":cast, "duration":duration, "description":description])
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

