//
//  Account.swift
//  Appetizers
//
//  Created by Margulan Daribayev on 10.04.2021.
//

import Foundation

struct Account: Codable {
    var firstName: String
    var lastName: String
    var email: String
    var birthDate: Date
    var needExtraNapkins: Bool
    var needExtraFoodEatingItems: Bool
}
