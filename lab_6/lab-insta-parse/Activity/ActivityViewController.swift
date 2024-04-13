//
//  ActivityViewController.swift
//  lab-insta-parse
//
//  Created by Jayleen Espinal on 4/6/24.
//

import UIKit

class ActivityViewController: UIViewController  {
    
    var selectedCountry: String?
    var countryActivities: [Activity]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the delegate and data source for the table view
        tableView.delegate = self
        tableView.dataSource = self
        
        // Get activities for the selected country
        countryActivities = Activity.activities(forCountry: selectedCountry ?? "")
        
        tableView.reloadData()
    }
}

extension ActivityViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryActivities?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityCell", for: indexPath) as! ActivityCell
        
        if let activity = countryActivities?[indexPath.row] {
            cell.configure(with: activity)
        }
        
        return cell
    }
}

extension ActivityViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let selectedActivity = countryActivities?[indexPath.row] {
            let detailVC = storyboard?.instantiateViewController(withIdentifier: "ActivityDetailViewController") as! ActivityDetailViewController
            detailVC.activityName = selectedActivity.name
            detailVC.activityDescription = selectedActivity.description
            navigationController?.pushViewController(detailVC, animated: true)
        }
    }
}
