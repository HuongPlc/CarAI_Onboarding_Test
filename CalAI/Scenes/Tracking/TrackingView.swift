//
//  TrackingView.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import SwiftUI

struct TrackingView: View {
    @StateObject private var viewModel = TrackingViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            VStack {
                HStack(spacing: 20) {
                    Button(action: {
                        if viewModel.indexTrackingSelection == 0 {
                            presentationMode.wrappedValue.dismiss()
                        } else {
                            viewModel.goBack()
                        }
                    }) {
                        Image(systemName: "arrow.backward")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(12)
                            .background(Color.backgroundButtonColor) // Nền trắng
                            .clipShape(Circle())
                    }

                    ProgressView(value: viewModel.progress)
                        .progressViewStyle(LinearProgressViewStyle())
                        .frame(maxWidth: .infinity)
                        .tint(.black)
                    Button(action: {
                        viewModel.isPresentingLanguageSelection = true
                    }) {
                        HStack {
                            Image(viewModel.languageSelected.resource)
                                .resizable()
                                .frame(width: 14, height: 14)
                            Text(viewModel.languageSelected.rawValue)
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                        .padding(EdgeInsets(top: 6, leading: 12, bottom: 6, trailing: 12))
                        .background(Color.backgroundButtonColor)
                        .clipShape(Capsule())
                    }
                }
                .padding(.top, 5)
                .padding([.leading, .trailing], 16)

                TrackingChildView(viewModel: viewModel)
                Spacer()
                Button(action: {
                    if viewModel.indexTrackingSelection == TrackingType.allCases.count - 1 {
                        viewModel.isPresentingIAP = true
                    } else {
                        viewModel.goNext()
                    }
                }) {
                    Text("Next")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(viewModel.isEnableBtn() ? Color.black : Color.gray.opacity(0.7))
                        .clipShape(Capsule())
                }
                .frame(maxHeight: 50)
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
                .disabled(!viewModel.isEnableBtn())
            }
        }
        .navigationBarBackButtonHidden(true)
        .fullScreenCover(isPresented: $viewModel.isPresentingIAP) {
            IAPView()
        }
    }
}

#Preview {
    TrackingView()
}
