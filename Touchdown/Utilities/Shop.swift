//
//  Shop.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/20/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
