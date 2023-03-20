//
//  ProductView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/20/23.
//

import SwiftUI

struct ProductView: View {
    //MARK: - Properties
    let product: Product
    var body: some View {
        VStack(alignment: .leading) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(product.productColor)
            }
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formatedPrice)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.gray)
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: products[0])
    }
}
