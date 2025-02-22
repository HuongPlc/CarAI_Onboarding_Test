//
//  ChooseLanguageView.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import SwiftUI

struct ChooseLanguageView: View {
    @ObservedObject var viewModel: StartTrackingViewModel

    var body: some View {
        ZStack(alignment: .center) {
            Color.black.opacity(0.3)
                .ignoresSafeArea()
                .onTapGesture {
                    viewModel.isPresentingLanguageSelection = false
                }
            VStack(spacing: 15) {
                ForEach(viewModel.languages, id: \.self) { language in
                    HStack(alignment: .center) {
                        Spacer()
                        Text(language.title)
                            .font(.subheadline)
                            .foregroundColor(.black)

                        Image(language.resource)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        Spacer()
                    }
                    .padding(.horizontal, 30)
                    .frame(height: 50)
                    .background(Color.backgroundButtonColor)
                    .cornerRadius(10)
                    .animatedTapEffect {
                        viewModel.selectLanguage(language: language)
                    }

                }.padding(.horizontal, 30)
            }
            .frame(maxWidth: UIScreen.main.bounds.width - 32)
            .padding(.vertical, 30)
            .background(Color.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    ChooseLanguageView(viewModel: .init())
        .background(Color.gray.opacity(0.1)) // Để dễ nhìn hơn
        .previewLayout(.sizeThatFits)
}
