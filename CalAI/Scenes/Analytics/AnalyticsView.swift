//
//  AnalysticsView.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

struct AnalyticsView: View {
    @StateObject private var viewModel = AnalyticsViewModel()

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Analystics")
                    .font(.title)
                    .bold()
                goalSection
                currentWeightSection
                bmiSection
                goalProgressView
                nutritionView
            }
            .padding()
        }
        .background(Color(.systemGray6).opacity(0.8))
    }

    private var goalSection: some View {
        HStack {
            Image(systemName: "trophy.fill")
                .foregroundColor(.orange)
            Text("Goal Weight: \(Int(viewModel.goalWeight)) lbs")
            Spacer()
            Button {
            } label: {
                Text("Update")
                    .font(.footnote)
                    .foregroundStyle(.white)
                    .padding([.top, .bottom], 5)
                    .padding([.leading, .trailing], 12)
                    .background(.black)
                    .clipShape(Capsule())
            }
        }
    }

    private var currentWeightSection: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Image(systemName: "scalemass.fill")
                Text("Current Weight: \(Int(viewModel.currentWeight)) lbs")
            }
            .padding(.top, 16)
            .padding([.leading, .trailing], 16)
            Text("Remember to update this at least once a week so we can adjust your plan to hit your goal.")
                .font(.caption)
                .padding([.leading, .trailing], 16)

            Button("Update your weight") {}
                .frame(maxWidth: .infinity, maxHeight: 25)
                .padding()
                .background(Color.black)
                .foregroundColor(.white)
        }.background(.white)
            .cornerRadius(16)
    }

    private var bmiSection: some View {
        WeightAnalyticsView()
    }
    
    private var goalProgressView: some View {
        GoalProgressView()
    }
    
    private var nutritionView: some View {
        NutritionView()
    }
}

struct AnalyticsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AnalyticsView()
        }
    }
}
