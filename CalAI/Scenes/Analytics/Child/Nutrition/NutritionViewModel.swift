//
//  NutritionViewModel.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

class NutritionViewModel: ObservableObject {
    @Published var selectedPeriod: TimePeriodNutrition = .thisWeek
    @Published var message: String = "No data to show"
    @Published var subMessage: String = "This will update as you log more food."

    func updateData() {
        // Giả lập logic thay đổi message nếu có dữ liệu trong tương lai
        if selectedPeriod == .thisWeek {
            message = "No data to show"
            subMessage = "This will update as you log more food."
        } else {
            message = "No data available"
            subMessage = "Try selecting another period."
        }
    }
}
