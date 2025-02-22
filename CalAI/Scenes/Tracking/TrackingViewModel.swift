//
//  TrackingViewModel.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import Foundation
import SwiftUI

class TrackingViewModel: ObservableObject {
    @Published var progress: Double = Double(1) / Double(TrackingType.allCases.count)
    @Published var isPresentingLanguageSelection: Bool = false
    @Published var isPresentingIAP: Bool = false
    @Published var languageSelected: LanguageType = .english
    @Published var trackingModels: [TrackingModel] = TrackingType.allCases.map({ TrackingModel(title: $0.title, subTitle: $0.subTitle, items: $0.trackingItems, type: $0) })
    @Published var indexTrackingSelection: Int = 0

    func goBack() {
        indexTrackingSelection -= 1
        progress = Double(indexTrackingSelection) / Double(TrackingType.allCases.count)
    }
    
    func goNext() {
        indexTrackingSelection += 1
        progress = Double(indexTrackingSelection) / Double(TrackingType.allCases.count)
    }

    func getCurrentTrackingModel() -> TrackingModel {
        return trackingModels[indexTrackingSelection]
    }
        
    func isEnableBtn() -> Bool {
        switch trackingModels[indexTrackingSelection].type {
        case .chooseTheGender,
                .numberWorkoutPerWeek,
                .hearUsFromSocial,
                .triedOtherCalorieTrackingApp,
                .yourGoal,
                .whatStoppingYouReaching,
                .doYouFollowASpecificDiet,
                .whatWouldYouLikeToAccomplish:
            let currentTrackingModel = trackingModels[indexTrackingSelection]
            let filterCurrentTrackingItem = currentTrackingModel.items.filter({ $0.isSelected })
            return !filterCurrentTrackingItem.isEmpty
        default:
            return true
        }
    }
}
