//
//  CourseTableViewCell.swift
//  AlphaCamp_mainapp_practice
//
//  Created by Ka Ho on 25/3/2016.
//  Copyright © 2016 Ka Ho. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieCover: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieCast: UILabel!
    @IBOutlet weak var movieDirector: UILabel!
    @IBOutlet weak var movieDuration: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
