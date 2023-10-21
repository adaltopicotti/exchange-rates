//
//  RateFluctuationModel.swift
//  ExchangeRates
//
//  Created by Adalto Picotti Junior on 21/10/23.
//

import Foundation

struct RateFluctuationModel: Identifiable {
    let id = UUID()
    var symbol: String
    var change: Double
    var changePct: Double
    var endRate: Double
}
