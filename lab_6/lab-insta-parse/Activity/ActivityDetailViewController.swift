//
//  ActivityDetailViewController.swift
//  lab-insta-parse
//
//  Created by Jayleen Espinal on 4/6/24.
//

import UIKit

class ActivityDetailViewController: UIViewController    {
    
    
    var activityName: String?
    var activityDescription: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Populate UI with activity information
        nameLabel.text = activityName
        descriptionLabel.text = activityDescription
    }
    
}
