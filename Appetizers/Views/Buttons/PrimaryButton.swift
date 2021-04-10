//
//  PrimaryButton.swift
//  Appetizers
//
//  Created by Margulan Daribayev on 10.04.2021.
//

import SwiftUI

struct PrimaryButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(title: "Ok")
    }
}
