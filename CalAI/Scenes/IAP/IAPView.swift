//
//  IAPView.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

struct IAPView: View {
    @StateObject private var viewModel = IAPViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Spacer()
                    Button {
                    } label: {
                        Text("Restore")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                }.padding(.trailing, 16)
                
                Text("We want you to\ntry CalAI for free")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
                Rectangle()
                    .fill(Color.gray)
                HStack {
                    Image(systemName: "checkmark")
                        .tint(.black)
                    Text("No Payment Due Now")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                }
                
                Button(action: {
                    viewModel.isNavigatingTabbar = true
                }) {
                    Text("Try for $0.00")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .clipShape(Capsule())
                }
                .frame(maxHeight: 50)
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
                
                Text("Just 31.31$ per year (2.63$/month)")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            .navigationDestination(isPresented: $viewModel.isNavigatingTabbar) {
                TabBarView()
            }
        }
    }
}
