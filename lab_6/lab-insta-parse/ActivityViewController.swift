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

    @IBOutlet weak var activityDropDown: UIPickerView!
    
    // Properties to hold data
    var selectedCountry: String?
    var countryDescription: String?
    var activities: [Activity]?
    
    override func viewDidLoad() {
            super.viewDidLoad()

            // Set up UI with data
            countryNameLabel.text = selectedCountry
            countryDescriptionLabel.text = countryDescription

            // Set up dropdown menu
            activityDropDown.dataSource = self
            activityDropDown.delegate = self
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
    
    
    private func showConfirmLogoutAlert() {
        let alertController = UIAlertController(title: "Log out of \(User.current?.username ?? "current account")?", message: nil, preferredStyle: .alert)
        let logOutAction = UIAlertAction(title: "Log out", style: .destructive) { _ in
            NotificationCenter.default.post(name: Notification.Name("logout"), object: nil)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertController.addAction(logOutAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true)
    }
    
    @IBAction func onLogOutTapped(_ sender: Any) {
        showConfirmLogoutAlert()
    }
}

extension ActivityViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return activities?.count ?? 0
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return activities?[row].activityName
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        guard let selectedActivity = activities?[row] else { return }
        navigateToActivityDetail(selectedActivity)
    }

    private func navigateToActivityDetail(_ activity: Activity) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let activityDetailVC = storyboard.instantiateViewController(withIdentifier: "ActivityDetailViewController") as? ActivityDetailViewController {
            activityDetailVC.activityName = activity.activityName
            activityDetailVC.activityDescription = activity.activityDescription
            // Pass any other necessary data
            navigationController?.pushViewController(activityDetailVC, animated: true)
        }
    }
}


