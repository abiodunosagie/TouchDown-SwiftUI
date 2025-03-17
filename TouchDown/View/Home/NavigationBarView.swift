//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 13/03/2025.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTIES
    @State private var isanimated: Bool = false
    
    // MARK: - BODY
    var body: some View {
        HStack{
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title2)
                    .foregroundColor(.black)
            }//: BUTTON
            Spacer()
            
            LogoView()
                .opacity(isanimated ? 1 : 0)
                .offset(x: 0, y: isanimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isanimated.toggle()
                    }
                }
            
            Spacer()
            Button {
                
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title2)
                        .foregroundColor(.black)
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }//: CART BUTTON


        }//: HSTACK
    }
}


// MARK: - PREVIEWS

#Preview(traits: .sizeThatFitsLayout) {
    NavigationBarView()
        .padding()
}
