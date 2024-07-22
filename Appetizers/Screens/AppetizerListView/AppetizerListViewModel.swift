//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Shilpa Joy on 2024-07-15.
//

import SwiftUI

@MainActor final class AppetizerListViewModel: ObservableObject { //  Marking viewmodel @MainActor : anything that happens to VM that is UI related that is re-routed to main thread
    
    @Published var appetizers: [Appetizer] = [] // the VM and oberservable object need to broadcast when it changes, and in AppelizerListView we are setting up to listen that broadcasting changes
    @Published var alertItem: AlertItem?
    @Published var isShowingAlert = false
    @Published var isLoading = false
    
    func getAppetizer() { // Another benefit of async await is that we don't have to manually put code in main thread
        
        isLoading = true
        
        Task { // Task used to put code in async context
            do {
                
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch APError.invalidURL {
                isShowingAlert = true
                alertItem = AlertContext.invalidURL
            }
            catch APError.invalidResponse {
                isShowingAlert = true
                alertItem = AlertContext.invalidResponse
            }
            catch APError.invalidData {
                isShowingAlert = true
                alertItem = AlertContext.invalidData
            }
            catch APError.unableToComplete {
                isShowingAlert = true
                alertItem = AlertContext.unableToComplete
            }
        }
    }
}



