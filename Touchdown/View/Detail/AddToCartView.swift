//
//  AddToCartView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/20/23.
//

import SwiftUI

struct AddToCartView: View {
    
    //MARK: - Properties
    @EnvironmentObject private var shop: Shop
    
    //MARK: - Body
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding(15)
        .background(shop.selectedProduct?.productColor ??  sampleProduct.productColor)
        .clipShape(Capsule())

    }
}

struct AddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartView()
            .environmentObject(Shop())
    }
}
