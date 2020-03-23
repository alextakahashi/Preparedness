//
//  EmergencyPlan.swift
//  Preparedness
//
//  Created by Sebastian Wild on 3/22/20.
//  Copyright © 2020 Sebastian Wild. All rights reserved.
//

import Foundation
import SwiftUI

struct Plan: Hashable {
    var title: String
    var accentColor: Color
    var items: [PlanListItem]
    
    private var iconName: String
    
    init(title: String,
         accentColor: Color,
         iconName: String,
         items: [PlanListItem] = []) {
        self.title = title
        self.accentColor = accentColor
        self.items = items
        self.iconName = iconName
    }
}

extension Plan {
    /// The plan's icon.
    ///
    /// For now, only system (SFSymbols, etc.) icons are supported
    var icon: Image {
        Image(systemName: iconName)
    }
}
