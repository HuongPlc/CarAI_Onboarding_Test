//
//  GoalProgressViewModel.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

class GoalProgressViewModel: ObservableObject {
    @Published var goalAchievedPercentage: Int = 91
    @Published var selectedPeriod: TimePeriod = .days90
}
