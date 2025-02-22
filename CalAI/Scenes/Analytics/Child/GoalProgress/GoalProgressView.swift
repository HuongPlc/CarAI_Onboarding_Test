//
//  GoadProgressView.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

struct GoalProgressView: View {
    @StateObject private var viewModel = GoalProgressViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Goal Progress")
                    .font(.title3)
                    .bold()
                Spacer()
                HStack {
                    Text("\(viewModel.goalAchievedPercentage)%")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .bold()
                    Text("Goal achieved")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
            }
            
            HStack(spacing: 12) {
                Picker("Time Period", selection: $viewModel.selectedPeriod) {
                    ForEach(TimePeriod.allCases, id: \.self) { period in
                        Text(period.rawValue).tag(period)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            ChartView()
                .frame(height: 120)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.white)
                        .shadow(radius: 2)
                )
        }
    }
}
