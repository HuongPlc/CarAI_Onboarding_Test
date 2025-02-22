//
//  StartTrackingViewModel.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import SwiftUI

class StartTrackingViewModel: ObservableObject {
    @Published var isPresentingLanguageSelection = false
    @Published var isNavigating = false
    @Published var languages: [LanguageType] = LanguageType.allCases
    @Published var languageSelected: LanguageType = .english
    
    func selectLanguage(language: LanguageType) {
        isPresentingLanguageSelection = false
        languageSelected = language
    }
}
