//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 14/03/2025.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
                
            })//: GRID
            .frame(height: 200)
            .padding(15)
            
        }//: SCROLL
    }
}
// MARK: - PREVIEWS
#Preview(traits: .sizeThatFitsLayout) {
    BrandGridView()
      
        .background(colorBackground)
}
