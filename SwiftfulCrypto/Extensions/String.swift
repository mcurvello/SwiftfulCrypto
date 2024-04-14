//
//  String.swift
//  SwiftfulCrypto
//
//  Created by Marcio Curvello on 14/04/24.
//

import Foundation

extension String {
    
    var removingHTMLOccurences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
