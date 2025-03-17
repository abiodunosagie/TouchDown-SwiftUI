//
//  RatingSizesDetailView.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 17/03/2025.
//

import SwiftUI

struct RatingSizesDetailView: View {
    // MARK: - PROPERTIES
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
         // RATINGS
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}) {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundStyle(.white)
                        }
                    }
                }//: HSTACK
             
                
            }//: VSTACK
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}) {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        }
                    }
                }
            }
            // SIZES
            
        }//: HSTACK
    }
}


// MARK: - PREVIEWS
#Preview(traits: .sizeThatFitsLayout) {
    RatingSizesDetailView()
        .padding()
}
