//
//  NetworkCallError.swift
//  Appetizers
//
//  Created by Margulan Daribayev on 08.04.2021.
//

import Foundation

enum NetworkCallError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
