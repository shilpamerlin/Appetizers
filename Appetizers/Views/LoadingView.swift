//
//  LoadingView.swift
//  Appetizers
//
//  Created by Shilpa Joy on 2024-07-16.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            ProgressView()
                .progressViewStyle(.circular)
            Text("Loading...")
                .padding(.top, 10)
        }
        .padding(20)
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 10)
    }
}

#Preview {
    LoadingView()
}
