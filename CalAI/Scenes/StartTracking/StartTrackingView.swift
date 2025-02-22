//
//  StartTracking.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import SwiftUI

struct StartTrackingView: View {
    @StateObject private var viewModel = StartTrackingViewModel()

    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Spacer()
                    ZStack(alignment: .topTrailing) {
                        Rectangle()
                            .fill(Color.white)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.66)
                        Button(action: {
                            viewModel.isPresentingLanguageSelection = true
                        }) {
                            HStack {
                                Image(viewModel.languageSelected.resource) // Thay đổi hình ảnh theo nhu cầu
                                    .resizable()
                                    .frame(width: 14, height: 14) // Điều chỉnh kích thước
                                Text(viewModel.languageSelected.rawValue)
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                            }
                            .padding(EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12))
                            .background(Color.backgroundButtonColor)
                            .clipShape(Capsule())
                        }
                        .padding(.top, 15)
                        .padding(.trailing, 10)
                    }
                    Text("Calories tracking\nmade easy")
                        .font(.system(size: 30))
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.top)
                    
                    Button(action: {
                        viewModel.isNavigating = true
                    }) {
                        Text("Get Started")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .padding()
                            .background(Color.black)
                            .clipShape(Capsule())
                            .padding(.horizontal, 16)
                    }
                    .padding(.top, 5)
                    HStack {
                        Text("Purchased on the web?")
                            .font(.subheadline)
                        Button(action: {
                            // Handle sign in
                        }) {
                            Text("Sign In")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.top, 5)
                    Spacer(minLength: 50)
                }
                
                if viewModel.isPresentingLanguageSelection {
                    ChooseLanguageView(viewModel: viewModel)
                        .ignoresSafeArea()
                        .transition(.opacity) // Fade animation
                }
            }
            .navigationDestination(isPresented: $viewModel.isNavigating) {
                TrackingView()
            }
        }
    }
}

#Preview {
    StartTrackingView()
}
