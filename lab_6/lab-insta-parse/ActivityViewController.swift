//
//  ActivityViewController.swift
//  lab-insta-parse
//
//  Created by Jayleen Espinal on 4/14/24.
//

import UIKit

class ActivityViewController: UIViewController {

    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var countryDescriptionLabel: UILabel!
    @IBOutlet weak var activityButton1: UIButton!
    @IBOutlet weak var activityButton2: UIButton!
    @IBOutlet weak var activityButton3: UIButton!

    // Properties to hold data
    var selectedCountry: String?
    var countryDescription: String?
    var activities: [Activity]?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set up UI with data
        countryNameLabel.text = selectedCountry
        countryDescriptionLabel.text = countryDescription

        // Populate activity buttons
        if let activities = activities {
            for (index, activity) in activities.enumerated() {
                switch index {
                case 0:
                    activityButton1.setTitle(activity.activityName, for: .normal)
                    // Set background image for button if needed
                    activityButton1.setBackgroundImage(UIImage(named: activity.imageName), for: .normal)
                case 1:
                    activityButton2.setTitle(activity.activityName, for: .normal)
                    // Set background image for button if needed
                    activityButton2.setBackgroundImage(UIImage(named: activity.imageName), for: .normal)
                case 2:
                    activityButton3.setTitle(activity.activityName, for: .normal)
                    // Set background image for button if needed
                    activityButton3.setBackgroundImage(UIImage(named: activity.imageName), for: .normal)
                default:
                    break
                }
            }
        }
    }
}