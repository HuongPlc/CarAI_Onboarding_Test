//
//  SettingViewModel.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import SwiftUI

class SettingsViewModel: ObservableObject {
    @Published var age: Int = 1
    @Published var height: String = "5 ft 6 in"
    @Published var weight: String = "120 lbs"
    @Published var balance: Double = 0.0
    @Published var burnedCalories: Bool = false
    @Published var liveActivity: Bool = false

    func referFriend() {
        // Logic giới thiệu bạn bè
        print("Refer friends tapped")
    }
}
