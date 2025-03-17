//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 14/03/2025.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTIES
    
   
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(
                rows: gridLayout,
                alignment: .center,
                spacing: columnSpacing, pinnedViews: []) {
                    Section(
                        header: SectionView(rotateClockwise: false),
                        footer: SectionView(rotateClockwise: true)
                    ) {
                        ForEach(categories) { category in
                            CategoryItemView(category: category)
                        }
                    }                }//: GRID
                .frame(height: 140)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
        }//: SCROLL
    }
}



// MARK: - PREVIEWS
#Preview(traits: .sizeThatFitsLayout) {
    CategoryGridView()
        .padding()
}
