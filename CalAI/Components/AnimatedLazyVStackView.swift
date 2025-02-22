//
//  AnimatedLazyVStackView.swift
//  CalAI
//
//  Created by DanHa on 21/02/2025.
//

import Foundation
import SwiftUI

struct AnimatedLazyVStackView: View {
    @ObservedObject var viewModel: TrackingViewModel
    @State var isVisible = false

    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 10) {
                    ForEach(Array(viewModel.getCurrentTrackingModel().items.enumerated()), id: \.element.title) { index, item in
                        TrackingItemButtonView(icon: item.icon,
                                               title: item.title,
                                               subtitle: item.subTitle,
                                               isSelected: item.isSelected) {
                            for i in viewModel.trackingModels[viewModel.indexTrackingSelection].items.indices {
                                viewModel.trackingModels[viewModel.indexTrackingSelection].items[i].isSelected = (i == index)
                            }
                            
                            viewModel.objectWillChange.send()
                        }
                                               .cornerRadius(10)
                                               .opacity(isVisible ? 1 : 0)
                                               .animation(.easeIn(duration: 0.3).delay(Double(index) * 0.1), value: isVisible)
                    }
                }
                .frame(minHeight: geometry.size.height)
                .onAppear {
                    isVisible = true
                }
            }
        }
        
    }
}

#Preview {
    AnimatedLazyVStackView(viewModel: .init())
}
