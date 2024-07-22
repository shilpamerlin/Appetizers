//
//  Alert.swift
//  Appetizers
//
//  Created by Shilpa Joy on 2024-07-15.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    
}


struct AlertContext {
    //MARK: - Network Alerts
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                            message: Text("The data received from the server was invalid. Please contact support."))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("Invalid response from the server. Please try again later or contact support."))
    
    static let invalidURL       = AlertItem(title: Text("Sever Error"),
                                            message: Text("There was an issue connecting to the server. If this persists, please contact support."))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection."))
    
    
    //MARK: - Account Alerts
    static let invalidForm      = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please ensure all fields in the form have been filled out."))
    
    static let invalidEmail     = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please ensure your email is correct."))
    
    static let userSaveSuccess  = AlertItem(title: Text("Profile Saved"),
                                            message: Text("Your profile information was successfully saved."))
    
    static let invalidUserData  = AlertItem(title: Text("Profile Error"),
                                            message: Text("There was an error saving or retrieving your profile."))
}
