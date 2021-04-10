//
//  AccountView.swift
//  Appetizers
//
//  Created by Margulan Daribayev on 08.04.2021.
//

import SwiftUI

struct AccountView: View {
    @StateObject var accountViewModel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $accountViewModel.firstName)
                    TextField("Last Name", text: $accountViewModel.lastName)
                    TextField("Email", text: $accountViewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthdate", selection: $accountViewModel.birthdate, displayedComponents: .date)
                    Button {
                        accountViewModel.didTapSaveChanges()
                    } label: {
                        Text("Save changes")
                    }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra napkins", isOn: $accountViewModel.needExtraNapkins)
                    Toggle("Extra food eating items", isOn: $accountViewModel.needExtraFoodEatingItems)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("😎 Account")
            .alert(item: $accountViewModel.alertItem) { alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
