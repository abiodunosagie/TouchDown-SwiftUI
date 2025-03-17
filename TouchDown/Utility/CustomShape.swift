//
//  CustomShape.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 17/03/2025.
//

import SwiftUI

struct CustomShape: Shape {
    // MARK: - PROPERTIES
    
    
    
    // MARK: - BODY
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: [.topLeft, .topRight],
            cornerRadii: CGSize(width: 35, height: 35)
        )
        return Path(path.cgPath)
    }
}
// MARK: - PREVIEWS
#Preview(traits: .fixedLayout(width: 428, height: 120)) {
    CustomShape()
        .padding()
}
