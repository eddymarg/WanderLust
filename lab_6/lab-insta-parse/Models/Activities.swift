//
//  Activities.swift
//  lab-insta-parse
//
//  Created by Jayleen Espinal on 4/6/24.
//

import Foundation

// Activity model struct
struct Activity {
    let activityName: String
    let activityDescription: String
    let countryDescription: String
    let imageName: String
    // Add more properties as needed
}

// Extension with activities data
extension Activity {
    static let activitiesForCountries: [String: (countryDescription: String, activities: [Activity])] = [
        "Bali, Indonesia": (
            countryDescription: "Bali packs a lot into one small island— from breathtaking waterfalls like Sekumpul in the north to the white sand beaches of Nyang Nyang in the south. Whatever you’re seeking, you’ll probably find: surf-able waves in Batu Bolong, all-night clubs in Seminyak, luxury clifftop hotels in Nusa Dua, and spiritual refuges all around.",
            activities: [
                Activity(activityName: "Visit Rice Terraces in Ubud", activityDescription: "Explore the stunning rice terraces and lush landscapes of Ubud.", countryDescription: "Bali, Indonesia", imageName: "rice"),
                Activity(activityName: "Explore Temples", activityDescription: "Discover ancient temples like Tanah Lot and Uluwatu.", countryDescription: "Bali, Indonesia", imageName: "balitemple"),
                Activity(activityName: "Visit the Sacred Monkey Forest Sanctuary", activityDescription: "Interact with long-tailed macaques in their natural habitat in the peaceful ambiance of Bali's lush forests. The forest is home to over 1,200 monkeys.", countryDescription: "Bali, Indonesia", imageName: "monkey"),
            ]
        ),
        "Paris, France": (
            countryDescription: "Paris lives up to its hype: A city with unbelievable food and culture, plus stunning views everywhere you turn. With 18 arrondissements, it’s a lot to see in one trip, but each neighborhood has a personality all its own. You can’t miss the iconic 7th, where art and history meet—there’s the Eiffel Tower, sure, but the impressive Musée du quai Branly is just a short walk away. ",
            activities: [
            // Activities for Paris
                Activity(activityName: "Visit the Louvre Museum", activityDescription: "As one of hte largest and oldest museums in the world, the Louvre host a treasure trove of artwork.", countryDescription: "Paris, France", imageName: "louvre"),
                Activity(activityName: "Explore the Sainte-Chapelle", activityDescription: "The Sainte-Chapelle is the finest royal chapel to be built in France and features a truly exceptional collection of stained-glass windows.", countryDescription: "Paris, France", imageName: "chapelle"),
                Activity(activityName: "Take a ride in the Bus Toque", activityDescription: "Discover a different way to dine. Bus toque is an atypical bus restaurant that offers a gourmet and cultural visit in the heart of Paris by day and night.", countryDescription: "Paris, France", imageName: "bus-toque"),
                ]
            ),
        "Venice, Italy": (
            countryDescription: "Centuries-old architecture, cobblestone alleys, a maze of eye-catching islands, and of course, the famous canals that run through it all—Venice is quite literally unlike anywhere else. While the capital of the Veneto (one of the 20 regions in Italy) is undoubtedly a stunner, it’s also a very real city.",
            activities: [
            // Activities for Rio De Janeiro
                Activity(activityName: "Visit Basilica di San Marco", activityDescription: "Blending the architectural styles of East and West, Venice's magnificent basilica was consecrated in 832 AD as an ecclesiastical building to house the remains of St. Mark.", countryDescription: "Venice, Italy", imageName: "cristo"),
                Activity(activityName: "Paddle through the Canal Grande", activityDescription: "Venice's main water thoroughfare, lined with great Renaissance palaces, is a colorful and busy spectacle of gondolas and vaporetti.", countryDescription: "Venice, Italy", imageName: "sugarloaf"),
                Activity(activityName: "Explore the Scuola Grande di San Rocco", activityDescription: "The Scuola Grande di San Rocco is a lay confraternity founded in 1478. The popularity of the cult of St. Roch, whose remains had been in the possession of the brotherhood since 1485, contributed to the latter’s rapid expansion to the extent of it becoming the richest Scuola of the city.", countryDescription: "Venice, Italy", imageName: "garden"),
                ]
            ),
        "Tokyo, Japan": (
            countryDescription: "With its futuristic skyscrapers, unrivaled food scene, and wild nightlife, Tokyo is a rush of pure adrenaline. The city is famously cutting-edge, yet its ancient Buddhist temples, vintage teahouses, and peaceful gardens offer a serene escape—and a reminder of its past.",
            activities: [
            // Activities for Tokyo
                Activity(activityName: "Visit the Temples", activityDescription: "According to legend, two brothers kept trying to return a statue of Kannon, the goddess of mercy, to the Sumida River only to have it returned to them the next day. Senso-ji temple is located in Tokyo's Asakusa district and was built to honor her.", countryDescription: "Tokyo, Japan", imageName: "temple"),
                Activity(activityName: "Visit Meiji Jingu Shrine", activityDescription: "Two, large gates frame the entrace to this shrine that was dedicated to Emperor and Empress Meiji. Completed in 1920, repairs were required after the shrine was damaged during World War II.", countryDescription: "Tokyo, Japan", imageName: "shrine"),
                Activity(activityName: "Take a hike up Mount Takao", activityDescription: "Mt. Takao is popular amoung city dwellers for the views from its seven hiking trails. ", countryDescription: "Tokyo, Japan", imageName: "mountain"),
            ]
        ),
        "Budapest, Hungary": (
            countryDescription: "Over 15 million gallons of water bubble into Budapest's 118 springs and boreholes every day. That number points to the astounding array of baths in this city, from the sparkling Gellert Baths to the vast 1913 neo-baroque Szechenyi Spa to Rudas Spa, a dramatic 16th-century Turkish pool with original Ottoman architecture.",
            activities: [
            // Activities for Budapest
                Activity(activityName: "Visit St. Stephen's Basilica", activityDescription: "Built between 1851 and 1905, this large parish church accommodates 8,500 people and features a magnificent 300 foot, noe-Renaissance dome.", countryDescription: "Budapest, Hungary", imageName: "basilica"),
                Activity(activityName: "Enjoy the Opera House", activityDescription: "The Hungarian State Opera House is a magnificent new-Renaissance style structure, completed in 1884 andn modeled after the Vieena Opera house, and is home ot both the state opera house and the state ballet.", countryDescription: "Budapest, Hungary", imageName: "opera"),
                Activity(activityName: "Explore Fisherman's Bastion", activityDescription: "Built during the 19th century for the Hungarian Millennium celebrations, this mock bastion features pointed towers and turrets, reminiscent of the fairytale castles in Disney World.", countryDescription: "Budapest, Hungary", imageName: "Fisherman"),
                ]
            )
    ]
    
    // Method to fetch activities for a given country
    static func activities(forCountry country: String) -> ([Activity], String)? {
        if let activitiesAndDescription = activitiesForCountries[country] {
            return (activitiesAndDescription.activities, activitiesAndDescription.countryDescription)
        }
        return nil
    }
}
