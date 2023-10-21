//
//  RateHistoricalModel.swift
//  ExchangeRates
//
//  Created by Adalto Picotti Junior on 21/10/23.
//

import Foundation

struct RateHistoricalModel: Identifiable {
    let id = UUID()
    var symbol: String
    var period: Date
    var endRate: Double
}
