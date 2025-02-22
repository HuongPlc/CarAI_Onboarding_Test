//
//  HomeView.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                // Header
                headerView()
                
                // Week Calendar
                weekCalendarView()
                
                // Calories Card
                caloriesCardView()
                
                // Macros
                macrosView()
                
                // Recently logged
                recentlyLoggedView()
                
                Spacer()
            }
        }
        .onAppear {
            viewModel.onAppear()
        }
        .background(Color(.systemGray6).opacity(0.8))
    }
    
    private func headerView() -> some View {
        HStack {
            HStack {
                Image(.appleBlack)
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("Cal AI")
                    .font(.title)
                    .bold()
            }
            Spacer()
            HStack {
                Image(systemName: "flame.fill")
                    .foregroundColor(.orange)
                Text("0")
                    .bold()
            }
            .padding([.top, .bottom], 5)
            .padding([.leading, .trailing], 20)
            .background(Color.white)
            .clipShape(Capsule())
        }
        .padding(.horizontal)
    }
    
    private func weekCalendarView() -> some View {
        HStack(spacing: 10) {
            ForEach(viewModel.weekDays, id: \.self) { day in
                VStack {
                    VStack {
                        Text(viewModel.getWeekday(from: day))
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                    }
                    .frame(width: 38, height: 38)
                    .overlay(
                        Circle().stroke(Color.gray, style: StrokeStyle(lineWidth: 2, dash: [4]))
                    )
                    Text("\(day)")
                        .font(.footnote)
                }
            }
        }
        .padding(.top, 5)
    }
    
    private func caloriesCardView() -> some View {
        HStack {
            Spacer()
            VStack {
                Text("1389")
                    .font(.system(size: 40, weight: .bold))
                Text("Calories left")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
            Spacer()
            Circle()
                .trim(from: 0.0, to: 1.0)
                .stroke(Color.gray.opacity(0.3), lineWidth: 10)
                .frame(width: 90, height: 90)
                .overlay(
                    Image(systemName: "flame.fill")
                        .foregroundColor(.black)
                )
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 32, height: 150)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 3)
        .padding(.vertical, 5)
    }
    
    private func macrosView() -> some View {
        HStack(spacing: 10) {
            MacroCard(value: "108g", label: "Protein left", icon: "leaf.fill", color: .red)
            MacroCard(value: "151g", label: "Carbs left", icon: "circle.grid.3x3.fill", color: .orange)
            MacroCard(value: "38g", label: "Fat left", icon: "drop.fill", color: .blue)
        }
        .padding(.top, 10)
        .frame(width: UIScreen.main.bounds.width - 32, height: 150)
    }
    
    private func recentlyLoggedView() -> some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Recently logged")
                    .font(.title)
                Spacer()
            }
            HStack {
                Spacer()
                VStack {
                    Text("You haven’t uploaded any food")
                        .foregroundColor(.black)
                        .bold()
                        .font(.subheadline)
                    Text("Start tracking today's meals by taking a quick picture.")
                        .foregroundColor(.black)
                        .font(.subheadline)
                }
                .padding([.top, .bottom], 15)
                Spacer()
            }
            .background(Color(.systemGray5))
            .cornerRadius(10)
        }
        .frame(width: UIScreen.main.bounds.width - 32)
    }
}


#Preview {
    HomeView()
}
