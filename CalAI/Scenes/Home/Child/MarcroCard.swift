//
//  MarcroCard.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

struct MacroCard: View {
    let value: String
    let label: String
    let icon: String
    let color: Color

    var body: some View {
        VStack(alignment: .leading) {
            Text(value)
                .font(.headline)
                .bold()
            Text(label)
                .font(.caption)
                .foregroundColor(.gray)
            Circle()
                .stroke(color.opacity(0.3), lineWidth: 10)
                .frame(width: 50, height: 50)
                .overlay(
                    Image(systemName: icon)
                        .foregroundColor(color)
                )
        }
        .frame(maxWidth: .infinity)
        .padding([.top, .bottom], 15)
        .padding([.leading, .trailing], 5)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 3)
    }
}
