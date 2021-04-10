//
//  Appetizer.swift
//  Appetizers
//
//  Created by Margulan Daribayev on 08.04.2021.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer1 = Appetizer(id: 1,
                                           name: "Asian Flank Steak",
                                           description: "This perfectly thin cut just melts in your mouth.",
                                           price: 8.99,
                                           imageURL: "food-placeholder",
                                           calories: 300,
                                           protein: 14,
                                           carbs: 0)
    
    static let sampleAppetizer2 = Appetizer(id: 2,
                                           name: "Asian Flank Steak",
                                           description: "This perfectly thin cut just melts in your mouth.",
                                           price: 8.99,
                                           imageURL: "food-placeholder",
                                           calories: 300,
                                           protein: 14,
                                           carbs: 0)
    
    static let sampleAppetizer3 = Appetizer(id: 3,
                                           name: "Asian Flank Steak",
                                           description: "This perfectly thin cut just melts in your mouth.",
                                           price: 8.99,
                                           imageURL: "food-placeholder",
                                           calories: 300,
                                           protein: 14,
                                           carbs: 0)
    
    static let appetizers = [sampleAppetizer1, sampleAppetizer2, sampleAppetizer3]
}
