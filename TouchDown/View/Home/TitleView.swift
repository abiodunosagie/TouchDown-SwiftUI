//
//  TitleView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 14/03/2025.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PROPERTIES
    
    var title: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//: VSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}



// MARK: - PREVIEWS

#Preview (traits: .sizeThatFitsLayout){
    TitleView(title: "Helmet")
        .background(colorBackground)
}
