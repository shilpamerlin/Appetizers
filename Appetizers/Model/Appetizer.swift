//
//  Appetizer.swift
//  Appetizers
//
//  Created by Shilpa Joy on 2024-07-15.
//

import Foundation

struct Appetizer: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int

}

struct AppetizerResponse: Codable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 001, name: "Chicken fingers", description: "chicken fingers are nice", price: 2.99, imageURL: "sample", calories: 50, protein: 10, carbs: 30)
    static let sampleAppetizerResponse = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
