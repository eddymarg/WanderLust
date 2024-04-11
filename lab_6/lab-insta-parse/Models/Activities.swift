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
    // Add more properties as needed
}

// Extension with activities data
extension Activity {
    // Dictionary to hold activities for each country
    static let activitiesForCountries: [String: [Activity]] = [
        "Bali, Indonesia": [
            Activity(name: "Visit Rice Terraces in Ubud", description: "Explore the stunning rice terraces and lush landscapes of Ubud."),
            Activity(name: "Explore Temples", description: "Discover ancient temples like Tanah Lot and Uluwatu."),
            Activity(name: "Visit the Sacred Monkey Forest Sanctuary", description: "Interact with long tailed macaques in their natural habitat in the peaceful ambience of Bali's lush forests. The forest is home to over 1,200 monkey's."),
            // Add more activities for Bali
        ],
        "Paris, France": [
            // Activities for Paris
            Activity(name: "Visit the Louvre Museum", description: "As one of hte largest and oldest museums in the world, the Louvre host a treasure trove of artwork."),
            Activity(name: "Explore the Sainte-Chapelle", description: "The Sainte-Chapelle is the finest royal chapel to be built in France and features a truly exceptional collection of stained-glass windows."),
            Activity(name: "Take a ride in the Bus Toque", description: "Discover a different way to dine. Bus toque is an atypical bus restaurant that offers a gourmet and cultural visit in the heart of Paris by day and night."),
        ],
        "Rio De Janeiro, Brazil": [
            // Activities for Rio De Janeiro
            Activity(name: "Visit Corcovado - Christ the Redeemer", description: "At the top of the wonder city is the Cristo Redentor Sanctuary, the main postcard of Brazil. The monument to Christ the Redeemer is the largest and most famous art seco sculpture in the world."),
            Activity(name: "Hike up Sugarloaf Mountain", description: "One of Brazil's most iconic landmarks and a symbol of Rio De Janeiro's beauriful natural surroundings, Sugarloaf Mountain is a must see attraction."),
            Activity(name: "Explore the beautiful Botanical Garden", description: "two 800 yard long rows of towering royal palm trees are a highlight of this massive garden containing thousands of plants and trees, including every variety of palm tree imaginable."),
        ],
        "Tokyo, Japan": [
            // Activities for Tokyo
            Activity(name: "Visit the Temples", description: "According to legend, two brothers kept trying to return a statue of Kannon, the goddess of mercy, to the Sumida River only to have it returned to them the next day. Senso-ji temple is located in Tokyo's Asakusa district and was built to honor her."),
            Activity(name: "Visit Meiji Jingu Shrine", description: "Two, large gates frame the entrace to this shrine that was dedicated to Emperor and Empress Meiji. Completed in 1920, repairs were required after the shrine was damaged during World War II."),
            Activity(name: "Take a hike up Mount Takao", description: "Mt. Takao is popular amoung city dwellers for the views from its seven hiking trails. "),
        ],
        "Budapest, Hungary": [
            // Activities for Budapest
            Activity(name: "Visit St. Stephen's Basilica", description: "Built between 1851 and 1905, this large parish church accommodates 8,500 people and features a magnificent 300 foot, noe-Renaissance dome."),
            Activity(name: "Enjoy the Opera House", description: "The Hungarian State Opera House is a magnificent new-Renaissance style structure, completed in 1884 andn modeled after the Vieena Opera house, and is home ot both the state opera house and the state ballet."),
            Activity(name: "Explore Fisherman's Bastion", description: "Built during the 19th century for the Hungarian Millennium celebrations, this mock bastion features pointed towers and turrets, reminiscent of the fairytale castles in Disney World."),
        ]
    ]
    
    // Method to fetch activities for a given country
    static func activities(forCountry country: String) -> [Activity]? {
        return activitiesForCountries[country]
    }
}
