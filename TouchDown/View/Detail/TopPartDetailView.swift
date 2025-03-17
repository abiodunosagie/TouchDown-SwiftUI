//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 15/03/2025.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center,spacing: 6){
            // PRICE
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(
                    shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice
                )
                    .font(.largeTitle)
                    .fontWeight(.black)
            }//: VSTACK
            .offset(y: isAnimating ?  -50 :  -75)
            Spacer()
            // PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }//: HSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}



// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout) {
    TopPartDetailView()
        .environmentObject(Shop())
}
