//
//  TrackingItemModel.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import Foundation
import SwiftUI

struct TrackingItemModel: Identifiable {
    var id = UUID()
    var icon: Image?
    var title: String
    var subTitle: String?
    var isSelected: Bool = false
    
    init(icon: Image? = nil, title: String, subTitle: String? = nil) {
        self.icon = icon
        self.title = title
        self.subTitle = subTitle
    }
}
