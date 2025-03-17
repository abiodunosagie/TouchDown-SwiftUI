//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 13/03/2025.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
       
            TabView {
                ForEach(players) { player in
                    FeaturedItemView(player: player)
                        .padding(.top, 10)
                        .padding(.horizontal, 15)
                       
                }//: LOOP
            }//: TAB
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
          
        
    }
}

#Preview {
    FeaturedTabView()
        .background(Color.gray)
    
}
