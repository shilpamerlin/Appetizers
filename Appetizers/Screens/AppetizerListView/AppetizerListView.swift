//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Shilpa Joy on 2024-07-10.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject private var appetizerListViewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            
            NavigationStack {
                VStack {
                    
                    List(appetizerListViewModel.appetizers) {appetizer in
                        
                        NavigationLink(destination: AppetizerDetailView(appetizer: appetizer)) {
                            AppetizerListCell(appetizer: appetizer)
                        }
                    }
                }.padding(.leading)
                    .navigationTitle("🍟 Appetizers")
            }
            .task { // tailcor made for handling network call, this will automatically cancel the api call if user navigates to other screen without completing the network call
                appetizerListViewModel.getAppetizer()
            }
            if appetizerListViewModel.isLoading {
                LoadingView()
            }
        }
        .alert(appetizerListViewModel.alertItem?.title ?? Text("Something went wrong.."), isPresented: $appetizerListViewModel.isShowingAlert) {
            
        } message: {
            appetizerListViewModel.alertItem?.message
        }
        
        
        
    }
}

#Preview {
    AppetizerListView()
}
