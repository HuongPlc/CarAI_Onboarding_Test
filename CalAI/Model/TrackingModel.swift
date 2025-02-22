//
//  TrackingModel.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import Foundation

struct TrackingModel {
    var title: String
    var subTitle: String?
    var items: [TrackingItemModel]
    var type: TrackingType
    
    init(title: String, subTitle: String? = nil, items: [TrackingItemModel] = [], type: TrackingType) {
        self.title = title
        self.subTitle = subTitle
        self.items = items
        self.type = type
    }
}
