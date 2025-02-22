//
//  SplashView.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import SwiftUI

import Foundation

struct SplashView: View {
    @StateObject private var viewModel = SplashViewModel()
    @AppStorage("hasTracked") private var hasTracked: Bool = false

    var body: some View {
        let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ?? "Cal AI"

        if viewModel.isActive {
            if hasTracked {
                TabBarView()
            } else {
                StartTrackingView()
            }
        } else {
            HStack {
                Image(.apple)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(.black)
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Text(appName)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .padding(.trailing, 5)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    SplashView()
}
