//
//  Activity.swift
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
        
        // Get activities for the selected country
        countryActivities = activities[selectedCountry ?? ""] ?? []
        
        tableView.reloadData()
    }
}

extension ActivityViewController: UITableViewDataSource, UITableViewDelegate    {
    func tableView(_ tableView: UITableView, numberOfRowsInSection selection: Int) -> Int   {
        return countryActivities?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityCell", for: <#T##IndexPath#>)
        
        if let activity = countryActivities?[indexPath.row] {
            cell.textLabel?.text = activity.name
            cell.detailTextLabel?.text = activity.description
        }
        return cell
    }
}
