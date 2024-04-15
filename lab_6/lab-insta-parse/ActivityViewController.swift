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
                    case 1:
                        activityButton2.setTitle(activity.activityName, for: .normal)
                    case 2:
                        activityButton3.setTitle(activity.activityName, for: .normal)
                    default:
                        break
                    }
                }
            }
        }

        // Action method for activity button 1
        @IBAction func activityButton1Tapped(_ sender: UIButton) {
            navigateToActivityDetail(for: 0)
        }

        // Action method for activity button 2
        @IBAction func activityButton2Tapped(_ sender: UIButton) {
            navigateToActivityDetail(for: 1)
        }

        // Action method for activity button 3
        @IBAction func activityButton3Tapped(_ sender: UIButton) {
            navigateToActivityDetail(for: 2)
        }

        private func navigateToActivityDetail(for index: Int) {
            guard let activities = activities, index < activities.count else {
                return
            }
            let selectedActivity = activities[index]
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let activityDetailVC = storyboard.instantiateViewController(withIdentifier: "ActivityDetailViewController") as? ActivityDetailViewController {
                activityDetailVC.activityName = selectedActivity.activityName
                activityDetailVC.activityDescription = selectedActivity.activityDescription
                // Pass any other necessary data
                navigationController?.pushViewController(activityDetailVC, animated: true)
            }
        }
    }
