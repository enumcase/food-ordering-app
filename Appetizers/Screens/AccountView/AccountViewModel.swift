//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Margulan Daribayev on 10.04.2021.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    @AppStorage("userAccount") private var userAccountData: Data?
    
    @Published var userAccount = Account(firstName: "",
                                     lastName: "",
                                     email: "",
                                     birthDate: Date(),
                                     needExtraNapkins: false,
                                     needExtraFoodEatingItems: false)
    
    @Published var alertItem: AlertItem?
    
    func didTapSaveChanges() {
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(userAccount)
            userAccountData = data
            alertItem = AlertContext.userSavedSuccess
        } catch {
            alertItem = AlertContext.invalidUserAccountData
        }
    }
    
    func retrieveAccountInfo() {
        guard let userAccountData = userAccountData else { return }
        
        do {
            userAccount = try JSONDecoder().decode(Account.self, from: userAccountData)
        } catch {
            alertItem = AlertContext.invalidUserAccountData
        }
    }
    
    var isValidForm: Bool {
        guard !userAccount.firstName.isEmpty && !userAccount.lastName.isEmpty && !userAccount.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard userAccount.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
}
