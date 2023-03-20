//
//  Constants.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/19/23.
//

import SwiftUI

//MARK: - Colors
let backgroundColor = Color("ColorBackground")
let colorGray = Color(.systemGray4)

//MARK: - Data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let sampleProduct: Product = products[0]
let brands: [Brand] = Bundle.main.decode("brand.json")

//MARK: - Layout
let rowSpacing: CGFloat = 15
let columnSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//MARK: - UX
let feedback: UIImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
