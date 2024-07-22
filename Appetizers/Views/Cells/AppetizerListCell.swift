//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Shilpa Joy on 2024-07-15.
//

import SwiftUI

struct AppetizerListCell: View {
    
    
    var appetizer: Appetizer
    
    var body: some View {
        HStack {
//            Image("sample")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .cornerRadius(8)
            // Async image in iOS 15
            
          
            DownloadedAppetizerImage(imageURL: appetizer.imageURL)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .bold()
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
                    
            }
            .padding()
                
        }
    }
}

struct DownloadedAppetizerImage: View {
    
    var imageURL: String
    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(5)
        } placeholder: {
            Image("food-placeholder")
                .resizable()
        }
    }
}

