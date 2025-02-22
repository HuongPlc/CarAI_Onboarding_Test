//
//  View+Extension.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import Foundation
import SwiftUI

extension View {
    func animatedTapEffect(haptic: Bool = true, scale: CGFloat = 0.98, duration: Double = 0.19, action: @escaping () -> Void) -> some View {
        modifier(AnimatedTapModifier(haptic: haptic, scale: scale, duration: duration, action: action))
    }
}
