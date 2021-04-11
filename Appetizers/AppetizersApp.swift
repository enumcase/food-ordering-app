//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Margulan Daribayev on 08.04.2021.
//

import SwiftUI

@main

struct AppetizersApp: App {
    
    init() {
        UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = UIColor(Color.brandPrimary)
    }
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
    
}
