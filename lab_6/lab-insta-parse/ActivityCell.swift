//
//  ActivityCell.swift
//  lab-insta-parse
//
//  Created by Jayleen Espinal on 4/14/24.
//

import UIKit

class ActivityCell: UITableViewCell {
    
    // add the outlets here
    @IBOutlet weak var activityImageView: UIImageView!
    @IBOutlet weak var activityNameLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
