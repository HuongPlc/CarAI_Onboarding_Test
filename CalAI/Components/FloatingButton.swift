//
//  FloatingButton.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

struct FloatingButton: View {
    let action: () -> Void

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    action()
                }) {
                    Image(systemName: "plus")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 60, height: 60)
                        .background(Color.black)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                }
                .padding(.bottom, 20)
                .padding(.trailing, 20)
            }
        }
    }
}
