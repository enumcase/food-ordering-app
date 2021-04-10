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
                        .onTapGesture {
                            appetizersListViewModel.selectedAppetizer = appetizer
                            appetizersListViewModel.isShowingDetailView = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(appetizersListViewModel.isShowingDetailView)
            }
            .onAppear {
                appetizersListViewModel.getAppetizers()
            }
            .blur(radius: appetizersListViewModel.isShowingDetailView ? 20 : 0)
            
            if appetizersListViewModel.isLoading {
                LoadingView()
            }
            
            if appetizersListViewModel.isShowingDetailView {
                AppetizerDetailView(appetizer: appetizersListViewModel.selectedAppetizer!,
                                    isShowingDetailView: $appetizersListViewModel.isShowingDetailView)
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
