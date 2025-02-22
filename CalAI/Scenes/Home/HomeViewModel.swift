//
//  HomeViewModel.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var hasTracked: Bool = false
    @Published var weekDays: [Int] = Array(16...22)

    let weekdays = ["S", "M", "T", "W", "T", "F", "S"]

    func getWeekday(from day: Int) -> String {
        return weekdays[(day - 16) % 7]
    }

    func onAppear() {
        hasTracked = true
    }
}
