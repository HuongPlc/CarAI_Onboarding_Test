//
//  WeightAnalyticsView.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

struct WeightAnalyticsView: View {
    @StateObject private var viewModel = WeightAnalyticsViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Your BMI")
                .fontWeight(.medium)
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("Your weight is")
                        .font(.headline)
                    Text(viewModel.category)
                        .font(.subheadline)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(viewModel.categoryColor)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                    Spacer()
                    Image(systemName: "questionmark.circle")
                        .foregroundColor(.gray)
                }

                Text(String(format: "%.1f", viewModel.bmi))
                    .font(.largeTitle.bold())

                ZStack(alignment: .leading) {
                    LinearGradient(gradient: Gradient(colors: [.blue, .green, .yellow, .red]),
                                   startPoint: .leading, endPoint: .trailing)
                        .frame(height: 10)
                        .cornerRadius(5)

                    Rectangle()
                        .frame(width: 2, height: 20)
                        .foregroundColor(.black)
                        .offset(x: viewModel.position * 250)
                }
                .frame(width: UIScreen.main.bounds.width - 64, height: 20)

                HStack {
                    Label("Underweight", systemImage: "circle.fill").foregroundColor(.blue)
                    Spacer()
                    Label("Healthy", systemImage: "circle.fill").foregroundColor(.green)
                    Spacer()
                    Label("Overweight", systemImage: "circle.fill").foregroundColor(.yellow)
                    Spacer()
                    Label("Obese", systemImage: "circle.fill").foregroundColor(.red)
                }
                .font(.caption)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 15).fill(Color.white).shadow(radius: 3))
            //        .padding()
        }
    }
}

// Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeightAnalyticsView()
    }
}
