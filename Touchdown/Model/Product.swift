//
//  Product.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/19/23.
//

import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [CGFloat]
    
    var productColor: Color {
        return Color(red: color[0], green: color[1], blue: color[2])
    }
    
    var formatedPrice: String {
        return "$\(price)"
    }
}
