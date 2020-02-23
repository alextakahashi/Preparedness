//
//  CardView.swift
//  Preparedness
//
//  Created by Sebastian Wild on 2/23/20.
//  Copyright © 2020 Sebastian Wild. All rights reserved.
//

import Foundation
import SwiftUI

struct CardView: View {
    
    @Binding var titleText: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(titleText)
                .font(.headline)
            HStack(alignment: .center) {
                Image(systemName: "folder")
                Text("Local")
            }
            HStack {
                Image(systemName: "folder")
                Text("Out of State")
            }
        }
        .padding()
        .background(Color.gray)
        .cornerRadius(10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(titleText: .constant("Emergency Contacts"))
    }
}
