//
//  PlanListItem.swift
//  Preparedness
//
//  Created by Sebastian Wild on 3/22/20.
//  Copyright © 2020 Sebastian Wild. All rights reserved.
//

import Foundation
import SwiftUI

struct PlanListItem: Hashable {
    var title: String
    private var iconName: String    // for now, this is a system icon name
    
    init(title: String, iconName: String) {
        self.title = title
        self.iconName = iconName
    }
}

extension PlanListItem {
    /// The plan item's icon.
    ///
    /// For now, only system (SFSymbols, etc.) icons are supported
    var icon: Image {
        Image(systemName: iconName)
    }
}
