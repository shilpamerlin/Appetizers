//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Shilpa Joy on 2024-07-15.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    var body: some View {
      
            VStack {
                
                DownloadedAppetizerImage(imageURL: appetizer.imageURL)
                    .frame(width: 300, height: 225)
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .font(.system(size: 17))
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack(spacing: 25) {
                    ComponentsView(title: "Calories", value: appetizer.calories)
                    ComponentsView(title: "Carbs", value: appetizer.carbs)
                    ComponentsView(title: "Protein", value: appetizer.protein)
                    
                }
                .padding()
                Button(action: {
                    
                }, label: {
                    Text("$11.49 - Add To Order")
                        .foregroundStyle(.white)
                        .frame(width: 260, height: 50)
                        .background(.brandPrimary)
                        .cornerRadius(10)
                    
                })
                .padding(.bottom, 30)
                
                
            }
            
            //        .frame(width: 300, height: 525)
            //        .background(Color(.systemBackground))
            //        .shadow(radius: 40)
            //        .cornerRadius(12)
            
        }
    
   
}

struct ComponentsView: View {
    
    var title: String
    var value: Int
    
    
    var body: some View {
        VStack(spacing: 10) {
            Text(title)
                .font(.system(size: 14, weight: .bold))
                .foregroundStyle(.gray)
                .padding(.top, 20)
            Text("\(value) g")
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(.gray)
                .italic()
    
        }
    }
}

#Preview {
    
    AppetizerDetailView(appetizer: MockData.sampleAppetizer)
}
