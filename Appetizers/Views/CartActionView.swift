//
//  OrderButton.swift
//  Appetizers
//
//  Created by Shilpa Joy on 2024-07-23.
//

import SwiftUI

struct OrderItemsView: View {
    var body: some View {
        HStack {
            Button(action: {
                print("trash clicked")
            }, label: {
                CartImage(image:"trash")
                
            })
            Text("1")
                .font(.caption)
            Button(action: {
                
            }, label: {
                CartImage(image:"plus")
                
            })
        }
        .frame(width: 75, height: 30)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 15)
        .allowsHitTesting(false)
    }
}

#Preview {
    OrderItemsView()
}
