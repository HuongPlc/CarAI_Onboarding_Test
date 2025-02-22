//
//  SplashViewModel.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import Combine
import Foundation
import SwiftUI

class SplashViewModel: ObservableObject {
    @Published var isActive = false
    
    private var cancellable: AnyCancellable?
    
    init() {
        startTimer()
    }
    
    private func startTimer() {
        cancellable = Just(true)
            .delay(for: .seconds(1), scheduler: RunLoop.main) // ⏳ Delay 2s
            .sink { [weak self] _ in
                guard let self else { return }
                self.isActive = true
            }
    }
}
