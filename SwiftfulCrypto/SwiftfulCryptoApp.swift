//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by Marcio Curvello on 31/03/24.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
