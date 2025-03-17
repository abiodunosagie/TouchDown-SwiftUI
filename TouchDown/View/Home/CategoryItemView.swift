//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 14/03/2025.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    
    let category: Category
    
    // MARK: - BODY
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text("Button")
                    .fontWeight(.light)
                    .foregroundColor(.gray)
            Spacer()
            }//: HSTACK
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
            
        }//: BUTTON

    }
}



// MARK: - PREVIEWS
#Preview(traits: .sizeThatFitsLayout) {
    CategoryItemView(category: categories[0])
        .padding()
        .background(colorBackground)
}
