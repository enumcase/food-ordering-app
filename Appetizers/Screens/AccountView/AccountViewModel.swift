//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Margulan Daribayev on 10.04.2021.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var birthdate: Date = Date()
    
    @Published var needExtraNapkins: Bool = false
    @Published var needExtraFoodEatingItems: Bool = false
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func didTapSaveChanges() {
        guard isValidForm else { return }
        
        print("Changes saved")
    }
    
}
