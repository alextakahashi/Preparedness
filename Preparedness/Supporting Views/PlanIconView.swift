//
//  PlanIconView.swift
//  Preparedness
//
//  Created by Sebastian Wild on 3/22/20.
//  Copyright © 2020 Sebastian Wild. All rights reserved.
//

import SwiftUI

struct PlanIconView: View {
    
    let icon: Image
    let accentColor: Color
    
    var body: some View {
            Circle()
                .fill(accentColor)
                .scaledToFit()
                .overlay(
                    // How do you center this properly? GeometryReader stuff?
                        self.icon
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(0.7)
                            .foregroundColor(Color.white)
                    )
    }
}

struct PlanIconView_Previews: PreviewProvider {
    static var previews: some View {
        PlanIconView(icon: Image(systemName: "exclamationmark.triangle.fill"),
                     accentColor: .red
        )
    }
}
