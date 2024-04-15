//
//  ActivityDetailViewController.swift
//  lab-insta-parse
//
//  Created by Jayleen Espinal on 4/14/24.
//

import UIKit

class ActivityDetailViewController: UIViewController {
    
    @IBOutlet weak var activityNameLabel: UILabel!
    @IBOutlet weak var activityDescriptionLabel: UILabel!
    @IBOutlet weak var activityImageView: UIImageView!
    
    // Properties to hold data
    var activityName: String?
    var activityDescription: String?
    var imageName: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set up UI with data
        activityNameLabel.text = activityName
        activityDescriptionLabel.text = activityDescription
        if let imageName = imageName    {
            activityImageView.image = UIImage(named: imageName)
        }
    }
}
