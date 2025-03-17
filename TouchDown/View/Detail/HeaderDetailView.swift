//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 15/03/2025.
//

import SwiftUI


struct HeaderDetailView: View {
    // MARK: - PROPERTIES

    @EnvironmentObject var shop: Shop

    // MARK: - BODY

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }//: VSTACK
        .foregroundColor(.white)
    }
}
// MARK: - PREVIEWS
#Preview(traits: .sizeThatFitsLayout) {
    HeaderDetailView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
