//
//  QuantityFavourDetailView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 17/03/2025.
//

import SwiftUI

struct QuantityFavourDetailView: View {
    // MARK: - PROPERTIES
    @State var counter: Int = 0
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
               
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
                    
            }
                Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
                
             Button {
                 
                 if counter < 100 {
                     feedback.impactOccurred()
                     counter += 1
                 }
             } label: {
                Image(systemName: "plus.circle")
            }
Spacer()
            Button{
                feedback.impactOccurred()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            }
        }//: HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundStyle(.black)
        .imageScale(.large)
    }
}
// MARK: - PREVIEWS
#Preview(traits: .sizeThatFitsLayout) {
    QuantityFavourDetailView()
        .padding()
}
