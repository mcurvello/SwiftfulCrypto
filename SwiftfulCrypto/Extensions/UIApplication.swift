//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by Marcio Curvello on 06/04/24.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
