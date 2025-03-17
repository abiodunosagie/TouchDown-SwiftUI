//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 14/03/2025.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button {
                feedback.impactOccurred()
                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title2)
                    .foregroundColor(.white)
            }
            Spacer()
            
            Button(action: { }) {
                Image(systemName: "cart")
                    .font(.title2)
                    .foregroundColor(.white)
            }

        }
    }
}


// MARK: - PREVIEWS
#Preview(traits: .sizeThatFitsLayout) {
    NavigationBarDetailView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
