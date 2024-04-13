//
//  DetailViewModel.swift
//  SwiftfulCrypto
//
//  Created by Marcio Curvello on 13/04/24.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailService
    private var cancellabes = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailService(coin: coin)
        addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetails
            .sink { (returnedCoinDetails) in
                print("RECEIVED COIN DETAIL DATA")
                print(returnedCoinDetails)
            }
            .store(in: &cancellabes)
    }
}
