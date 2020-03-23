//
//  CardView.swift
//  Preparedness
//
//  Created by Sebastian Wild on 2/23/20.
//  Copyright © 2020 Sebastian Wild. All rights reserved.
//

import Foundation
import SwiftUI

/**
 A `CardView` has:
    - a title string
    - 0 or more row items, each with an image and assiciated text
 */
struct CardView: View {
    
    var plan: Plan
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                PlanIconView(icon: self.plan.icon, accentColor: self.plan.accentColor)
                    .frame(width: 20.5, height: 20.5)
                Text(plan.title)
                    .font(.headline)
            }
            ForEach(plan.items, id: \.self) { item in
                HStack(alignment: .center) {
                    PlanIconView(icon: item.icon, accentColor: Color.gray)
                        .frame(width: 20.5, height: 20.5)
                    Text(item.title)
                }
                .padding(.leading)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            // Set the preview background color so we can see
            Color.primaryBackground
            CardView(plan:
                Plan(title: "Emergency Contacts",
                     accentColor: .red,
                     iconName: "exclamationmark.triangle.fill",
                     items: [
                    PlanListItem(title: "Local", iconName: "folder"),
                    PlanListItem(title: "Out of State", iconName: "folder")
                ])
            )
        }
    }
}
