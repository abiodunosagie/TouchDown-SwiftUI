//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 17/03/2025.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    var body: some View {
        Button {
            feedback.impactOccurred()
            
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        }//: BUTTON
        .padding(15)
        .background(
            Color(
                red:shop.selectedProduct?.red ?? sampleProduct.red,
                green:shop.selectedProduct?.green ?? sampleProduct.green,
                blue:shop.selectedProduct?.blue ?? sampleProduct
                    .blue
            )
        )
        .clipShape(Capsule())

    }
}
// MARK: - PREVIEWS
#Preview(traits: .sizeThatFitsLayout) {
    AddToCartDetailView()
        .environmentObject(Shop())
        .padding()
}

