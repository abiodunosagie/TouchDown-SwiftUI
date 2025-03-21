//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 14/03/2025.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //: NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(
                    .top,
                    UIApplication.shared.windows.first?.safeAreaInsets
                        .top)
            
            //: HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            //: DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //: DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0) {
                //: RATINGS + SIZES
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                //: DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(
                        shop.selectedProduct?.description ??  sampleProduct.description
                    )
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                //: QUANTITY + FAVORITES
                QuantityFavourDetailView()
                    .padding(.vertical, 10)
                
                //: ADD TO CART
                
                
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }//: VSTACK
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape())
                .padding(.top, -105)
            )
        }//: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue:shop.selectedProduct?.blue ?? sampleProduct
                    .blue)
            .ignoresSafeArea(.all, edges: .all)
        )
    }
}


// MARK: - PREVIEWS
#Preview(traits: .fixedLayout(width: 375, height: 812)) {
    ProductDetailView()
        .environmentObject(Shop())
       
}
