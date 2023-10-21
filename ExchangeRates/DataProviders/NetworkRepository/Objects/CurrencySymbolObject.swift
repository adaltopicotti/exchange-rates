//
//  CurrencySymbolObject.swift
//  ExchangeRates
//
//  Created by Adalto Picotti Junior on 18/10/23.
//

import Foundation

import Foundation

struct CurrencySymbolObject: Codable {
    var base: String?
    var success: Bool = false
    var symbols: SymbolObject?

}

typealias SymbolObject = [String: String]
