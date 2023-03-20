//
//  VGridProductsView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/20/23.
//

import SwiftUI

struct VGridProductsView: View {
    
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: rowSpacing) {
                        ForEach(products) { product in
                            ProductView(product: product)
                                .onTapGesture {
                                    shop.selectedProduct = product
                                    shop.showingProduct = true
                                }
                        }
                }//: Grid
                .padding(.horizontal, 15)
                .padding(.bottom, 20)
    }
}

struct VGridProductsView_Previews: PreviewProvider {
    static var previews: some View {
        VGridProductsView()
            .environmentObject(Shop())
    }
}
