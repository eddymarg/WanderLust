//
//  Activities.swift
//  lab-insta-parse
//
//  Created by Jayleen Espinal on 4/6/24.
//

import Foundation

// Activity model struct
struct Activity {
    let name: String
    let description: String
}

// Extension with mock activities
extension Activity  {
    static var mockActivites: [Activity] = [
        Activity(name: "Paris, France",
                 description: "Explore here"),
        Activity(name:"Bali, Indonesia",
                 description: "Explore there"),
        Activity(name: "Tokyo, Japan",
                 description:"Explore here"),
        Activity(name:" Budapest, Hungary",
                 description:" Explore there"),
        Activity(name:"Rio De Janeiro, Brazil",
                 description:"Destination here") ]
}
