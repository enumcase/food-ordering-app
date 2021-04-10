//
//  Alert.swift
//  Appetizers
//
//  Created by Margulan Daribayev on 09.04.2021.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    // MARK: NETWORK ALERTS
    static let invalidData = AlertItem(title: Text("Server error"),
                                              message: Text("The data received from server was invalid. Please contact the support."),
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server error"),
                                              message: Text("Invalid response from the server. Please try again later or contact the support."),
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Server error"),
                                              message: Text("There was an issue connecting to the server. Please try again later or contact the support."),
                                              dismissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server error"),
                                              message: Text("Unable to complete the request to the server. Please check your connection."),
                                              dismissButton: .default(Text("Ok")))
    
    // MARK: - ACCOUNT ALERTS
    static let invalidForm = AlertItem(title: Text("Invalid form"),
                                          message: Text("One of the fields in the form is empty. Please complete the form."),
                                          dismissButton: .default(Text("Ok")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid email"),
                                          message: Text("Please ensure email format is correct."),
                                          dismissButton: .default(Text("Ok")))
    
    // MARK: - DATA PERSISTENCE ALERTS
    
    static let userSavedSuccess = AlertItem(title: Text("Account data saved"),
                                          message: Text("Your accound data was successfully saved."),
                                          dismissButton: .default(Text("Ok")))
    
    static let invalidUserAccountData = AlertItem(title: Text("Couldn't save account data"),
                                          message: Text("There was an error saving or retrieving your account data."),
                                          dismissButton: .default(Text("Ok")))
}
