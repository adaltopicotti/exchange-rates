//
//  RateObject.swift
//  ExchangeRates
//
//  Created by Adalto Picotti Junior on 21/10/23.
//

import Foundation

struct RateObject<Rates: Codable>: Codable {
    var base: String?
    var success: Bool = false
    var rates: Rates?
}

typealias RatesFluctuationObject = [String: FluctuationObject]

struct FluctuationObject: Identifiable, Codable {
    
    let id = UUID()
    let change: Double
    let changePct: Double
    let endRate: Double
    
    enum CodingKeys: String, CodingKey {
        case change
        case changePct = "change_pct"
        case endRate = "end_rate"
    }
}

typealias RatesHistoricalObject = [String: [String: Double]]
