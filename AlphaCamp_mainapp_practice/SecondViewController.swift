//
//  SecondViewController.swift
//  AlphaCamp_mainapp_practice
//
//  Created by Ka Ho on 25/3/2016.
//  Copyright © 2016 Ka Ho. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var dataShow: UITextView!
    @IBOutlet weak var warningLabel: UILabel!
    
    var signCount = 3
    var data:[String] = []
    let destination = ((NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)).first! as NSString).stringByAppendingPathComponent("/data.txt")
    
    func updateUpload() {
        userInput.text?.removeAll()
        warningLabel.hidden = true
        view.endEditing(true)
        dataShow.text = data.joinWithSeparator("\n\n")
        NSArray(array: data).writeToFile(destination, atomically: true)
    }
    
    func failureAction() {
        warningLabel.hidden = false
        view.endEditing(true)
    }
    
    @IBAction func fileAccess(sender: AnyObject) {
        if userInput.text?.isEmpty == true {
            warningLabel.text = "名字不能留白！！！"
            failureAction()
        }
        else if signCount < 1 {
            warningLabel.text = "簽名不能超過3次（每次開app算）！！！"
            failureAction()
        } else {
            data = [userInput.text!] + data //put the most update one at top...
            updateUpload()
            signCount -= 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        warningLabel.hidden = true
        dataShow.layer.cornerRadius = 5
        dataShow.layer.borderWidth = 1
        dataShow.layer.borderColor = UIColor.orangeColor().CGColor
        
        if let readData = NSArray(contentsOfFile: destination) {
            data = readData as! [String]
            updateUpload()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}