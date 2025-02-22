//
//  TrackingItemButtonView.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import SwiftUI

struct TrackingItemButtonView: View {
    let icon: Image?
    let title: String
    let subtitle: String?
    let alignmentText: HorizontalAlignment = .leading
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        HStack {
            if let icon = icon {
                icon
                    .resizable()
                    .frame(width: 14, height: 14)
                    .padding(8)
                    .background(.white)
                    .clipShape(Circle())
                    .padding(.leading, 16)
            }

            VStack(alignment: alignmentText, spacing: 2) {
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(isSelected ? .white : .black)

                if let subtitle = subtitle {
                    Text(subtitle)
                        .font(.footnote)
                        .foregroundColor(isSelected ? .white : .black)
                }
            }

            if let _ = icon {
                Spacer()
            }
        }
        .frame(width: UIScreen.main.bounds.width - 32)
        .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
        .background(isSelected ? .black : Color.backgroundButtonColor).animatedTapEffect {
            action()
        }
    }
}
