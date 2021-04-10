//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Margulan Daribayev on 08.04.2021.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
