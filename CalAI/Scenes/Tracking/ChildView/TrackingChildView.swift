//
//  GenderView.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import Foundation
import SwiftUI

struct TrackingChildView: View {
    @ObservedObject var viewModel: TrackingViewModel

    var body: some View {
        VStack(alignment: .leading) {
            Text(viewModel.getCurrentTrackingModel().title)
                .font(.largeTitle)
                .fontWeight(.black)
            if let subTitle = viewModel.getCurrentTrackingModel().subTitle, !subTitle.isEmpty {
                Text(subTitle)
                    .font(.system(size: 15))
            }
            switch viewModel.getCurrentTrackingModel().type {
            case .chooseTheGender,
                 .numberWorkoutPerWeek,
                 .hearUsFromSocial,
                 .triedOtherCalorieTrackingApp,
                 .yourGoal,
                 .whatStoppingYouReaching,
                 .doYouFollowASpecificDiet,
                 .whatWouldYouLikeToAccomplish:
                Spacer()
                AnimatedLazyVStackView(viewModel: viewModel, isVisible: false)
                Spacer()
            default:
                Rectangle()
                    .fill(Color.gray)
                    .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: .infinity)
            }
        }.padding([.leading, .trailing], 16)
            .frame(maxHeight: .infinity, alignment: .center)
    }
}
