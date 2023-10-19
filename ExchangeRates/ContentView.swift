//
//  ContentView.swift
//  ExchangeRates
//
//  Created by Adalto Picotti Junior on 04/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                doFetchData()
            } label: {
                Image(systemName: "network")
            }
        }
        .padding()
    }
    
    private func doFetchData() {
        let rateFluctuationDataProvider = RatesFluctuationDataProvider()
        rateFluctuationDataProvider.delegate = self
        rateFluctuationDataProvider.fetchFluctuation(by: "BLR", from: ["USD", "EUR"], startDate: "2023-10-01", endDate: "2023-10-18")
        
        let currencySymbolDataProvider = CurrencySymbolsDataProvider()
        currencySymbolDataProvider.delegate = self
        currencySymbolDataProvider.fetchSymbols()
        
        let rateHistoricalDataProvider = RatesHistoricalDataProvider()
        rateHistoricalDataProvider.delegate = self
        rateHistoricalDataProvider.fetchTimeseries(by: "BLR", from: ["USD", "EUR"], startDate: "2023-10-01", endDate: "2023-10-18")
    }
}

extension ContentView: RatesFluctuationDataProviderDelegate {
    
    func success(model: RatesFluctuationObject) {
        print("RateFluctuation: \(model)\n\n")
    }
}

extension ContentView: CurrencySymbolsDataProviderDelegate {
    
    func success(model: CurrencySymbolObject) {
        print("CurrencySymbols: \(model)\n\n")
    }
}

extension ContentView: RatesHistoricalDataProviderDelegate {
    
    func success(model: RatesHistoricalObject) {
        print("RatesHistorical: \(model)\n\n")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
