//
//  ChartView.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

struct ChartView: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let startY = geometry.size.height / 2
                path.move(to: CGPoint(x: 0, y: startY))
                path.addLine(to: CGPoint(x: geometry.size.width, y: startY))
            }
            .stroke(Color.black, lineWidth: 2)
        }
    }
}
