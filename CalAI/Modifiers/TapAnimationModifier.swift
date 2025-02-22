//
//  TapAnimationModifier.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import Foundation
import SwiftUI

struct AnimatedTapModifier: ViewModifier {
    let haptic: Bool
    let scale: CGFloat
    let duration: Double
    let action: () -> Void
    
    @State private var isTapped = false

    func body(content: Content) -> some View {
        content
            .scaleEffect(isTapped ? scale : 1.0)
            .animation(.easeOut(duration: duration), value: isTapped)
            .simultaneousGesture(
                TapGesture().onEnded {
                    if haptic {
                        UIImpactFeedbackGenerator(style: .light).impactOccurred()
                    }
                    isTapped = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                        isTapped = false
                        action()
                    }
                }
            )
    }
}
