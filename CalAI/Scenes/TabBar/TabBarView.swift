//
//  TabbarView.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 0

    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.gray]
        tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.black]
        tabBarAppearance.stackedLayoutAppearance.selected.iconColor = UIColor.black
        UITabBar.appearance().standardAppearance = tabBarAppearance
    }

    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill").renderingMode(.template)
                        Text("Home")
                    }
                    .tint(.black)
                    .tag(0)

                AnalyticsView()
                    .tabItem {
                        Image(systemName: "chart.bar.fill").renderingMode(.template)
                        Text("Analytics")
                    }
                    .tint(.black)
                    .tag(1)

                SettingsView()
                    .tabItem {
                        Image(systemName: "gearshape.fill").renderingMode(.template)
                        Text("Settings")
                    }
                    .tint(.black)
                    .tag(2)
                Text("")
                    .tabItem {
                        EmptyView()
                    }
                    .tag(3)
            }

            FloatingButton {
            }
        }.navigationBarBackButtonHidden()
    }
}
