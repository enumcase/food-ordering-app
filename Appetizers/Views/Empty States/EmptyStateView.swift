//
//  EmptyStateView.swift
//  Appetizers
//
//  Created by Margulan Daribayev on 10.04.2021.
//

import SwiftUI

struct EmptyStateView: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                
                Text(message)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
        }
    }
}

struct EmptyStateView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateView(imageName: "empty-state-image", message: "No orders placed.")
    }
}
