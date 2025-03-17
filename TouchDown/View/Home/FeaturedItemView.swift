//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 13/03/2025.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTIES
    
    let player: Player
    
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}



// MARK: - PREVIEWS
#Preview(traits: .sizeThatFitsLayout) {
    FeaturedItemView(player: players[0])
        .padding()
        .background(colorBackground)
}
