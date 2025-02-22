//
//  AnalysticsViewModel.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

class AnalyticsViewModel: ObservableObject {
    @Published var goalWeight: Double = 110
    @Published var currentWeight: Double = 120
    @Published var bmi: Double = 19.4
    @Published var goalProgress: Double = 0.91
    
    func updateWeight(newWeight: Double) {
        currentWeight = newWeight
        calculateProgress()
    }
    
    private func calculateProgress() {
        let progress = (goalWeight / currentWeight)
        goalProgress = min(progress, 1.0) // Ensure progress does not exceed 100%
    }
}
