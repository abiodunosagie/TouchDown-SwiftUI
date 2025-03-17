//
//  Shop.swift
//  TouchDown
//
//  Created by Abiodun Osagie on 17/03/2025.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
