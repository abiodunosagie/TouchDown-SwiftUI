//
//  SectionView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 14/03/2025.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    
    @State  var rotateClockwise: Bool
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }//: VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}



// MARK: - PREVIEWS
#Preview(traits: .fixedLayout(width: 130, height: 240)) {
    SectionView(rotateClockwise: true)
        .padding()
        .background(colorBackground)
}
