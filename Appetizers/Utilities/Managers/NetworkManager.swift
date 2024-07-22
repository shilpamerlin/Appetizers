//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Shilpa Joy on 2024-07-15.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
        
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    private init() {
        
    }
    
    func getAppetizers() async throws ->  [Appetizer] { // throws an error if something went bad
        
        guard let url = URL(string: appetizerURL) else {
            throw APError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url) // the new way to do datatask and the key differnce is it returns a tuple with data and reponse which are not optional, meaning if it fails it will throw an error
        guard let reponse = response as? HTTPURLResponse, reponse.statusCode == 200 else {
            throw APError.invalidResponse
        }
        
        do {
            let decorder = JSONDecoder()
            let decodedResponse = try decorder.decode(AppetizerResponse.self, from: data)
            return decodedResponse.request
        }
        catch {
            throw APError.invalidData
        }
    }
}

