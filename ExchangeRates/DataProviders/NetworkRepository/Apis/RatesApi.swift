//
//  RatesApi.swift
//  ExchangeRates
//
//  Created by Adalto Picotti Junior on 04/10/23.
//

import Foundation

enum HttpMethod: String {
    case get = "GET"
}

struct RatesApi {
    static let baseUrl = "https://api.apilayer.com/exchangerates_data"
    static let apiKey = "d4isx7BboumKlR3pNYJX2NRC9JtFKV2W"
    
    static let fluctuation = "/fluctuation"
    static let symbols = "/symbols"
    static let timeseries = "/timeseries"
}
