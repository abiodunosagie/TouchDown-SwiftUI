//
//  ProductModel.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 14/03/2025.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    // computed properties
    var red: Double { return color[0]}
    var green: Double { return color[1]}
    var blue: Double { return color[2]}
    
    
    var formattedPrice: String { return "$\(price)"}
}
