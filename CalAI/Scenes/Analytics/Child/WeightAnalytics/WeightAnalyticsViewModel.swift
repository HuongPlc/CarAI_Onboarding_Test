//
//  WeightAnalyticsViewModel.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

class WeightAnalyticsViewModel: ObservableObject {
    @Published var bmi: Double = 19.4
    
    var category: String {
        switch bmi {
        case ..<18.5: return "Underweight"
        case 18.5..<25: return "Healthy"
        case 25..<30: return "Overweight"
        default: return "Obese"
        }
    }
    
    var categoryColor: Color {
        switch category {
        case "Underweight": return .blue
        case "Healthy": return .green
        case "Overweight": return .yellow
        default: return .red
        }
    }
    
    var position: CGFloat {
        let minBMI: CGFloat = 15
        let maxBMI: CGFloat = 35
        return CGFloat((bmi - minBMI) / (maxBMI - minBMI))
    }
}
