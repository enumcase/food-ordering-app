//
//  AppetizersListView.swift
//  Appetizers
//
//  Created by Margulan Daribayev on 08.04.2021.
//

import SwiftUI

struct AppetizersListView: View {
    
    @StateObject var appetizersListViewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(appetizersListViewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .navigationTitle("🍟 Appetizers")
                .onAppear {
                    appetizersListViewModel.getAppetizers()
                }
            }
            
            if appetizersListViewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $appetizersListViewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
    
}

struct AppetizersListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersListView()
    }
}
