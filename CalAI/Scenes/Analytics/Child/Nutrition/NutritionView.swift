//
//  NutritionView.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

struct NutritionView: View {
    @StateObject private var viewModel = NutritionViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Nutrition")
                .font(.title3)
                .bold()

            Picker("Time Period", selection: $viewModel.selectedPeriod) {
                ForEach(TimePeriodNutrition.allCases, id: \.self) { period in
                    Text(period.rawValue).tag(period)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: viewModel.selectedPeriod) { _ in
                viewModel.updateData()
            }

            VStack(spacing: 8) {
                Text(viewModel.message)
                    .font(.headline)
                    .bold()
                
                Text(viewModel.subMessage)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, minHeight: 150)
            .background(Color(.systemGray6))
            .cornerRadius(12)
            .padding(.top, 8)

            Spacer()
        }
    }
}
