//
//  SettingView.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    @StateObject private var viewModel = SettingsViewModel()

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Settings")
                    .font(.title)
                    .bold()

                VStack(alignment: .leading, spacing: 8) {
                    SettingRow(title: "Age", value: "\(viewModel.age)")
                    SettingRow(title: "Height", value: viewModel.height)
                    SettingRow(title: "Current weight", value: viewModel.weight)
                }

                VStack(alignment: .leading, spacing: 12) {
                    Text("Current Balance")
                        .font(.headline)
                        .padding(.top, 16)
                        .padding([.leading, .trailing], 16)
                    Text("$\(viewModel.balance, specifier: "%.2f")")
                        .font(.title)
                        .bold()
                        .padding([.leading, .trailing], 16)
                    Button(action: {
                        viewModel.referFriend()
                    }) {
                        Text("Refer friends to earn $")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 16)
                    .padding([.leading, .trailing], 16)
                }
                .background(Color(.white))
                .cornerRadius(15)

                Section(header: Text("Customization").font(.headline).bold()) {
                    NavigationLink(destination: EmptyView()) {
                        HStack {
                            Text("Personal details")
                                .foregroundStyle(.black)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                        }
                    }
                    NavigationLink(destination: EmptyView()) {
                        HStack {
                            Text("Adjust goals")
                                .foregroundStyle(.black)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)                        }
                    }
                    NavigationLink(destination: EmptyView()) {
                        HStack {
                            Text("Change language")
                                .foregroundStyle(.black)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)                        }
                    }
                }

                Section(header: Text("Preferences").font(.headline).bold()) {
                    Toggle("Burned Calories", isOn: $viewModel.burnedCalories)
                    Toggle("Live Activity", isOn: $viewModel.liveActivity)
                }

                Spacer()
            }
            .padding()
        }.background(Color(.systemGray6).opacity(0.8))
    }
}

struct SettingRow: View {
    let title: String
    let value: String

    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(value).bold()
        }
        .padding(.vertical, 5)
    }
}

struct SettingNavigationRow: View {
    let title: String

    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color(.systemGray5))
        .cornerRadius(10)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
