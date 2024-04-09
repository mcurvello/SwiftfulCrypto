//
//  HapticManager.swift
//  SwiftfulCrypto
//
//  Created by Marcio Curvello on 09/04/24.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
