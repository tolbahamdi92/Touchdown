//
//  ProductDetailedView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/20/23.
//

import SwiftUI

struct ProductDetailedView: View {
    
    //MARK: - Properties
    @State private var rating: Int = 3
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            DetailNavigationBar()
                .padding(.horizontal)
            
            HeaderDetailView()
                .padding(.horizontal)
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0) {
                //MARK: - Rating and Sizes
                HStack {
                    RatingView(rating: $rating)
                    Spacer()
                    SizesView()
                }
                .padding(.vertical, 16)
                
                //MARK: - Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }//: ScrollView
                        
                
                //MARK: - Countity and Favorite
                HStack {
                    QuantityProductView()
                    Spacer()
                    Button {
                        feedback.impactOccurred()
                    } label: {
                        Image(systemName: "heart.circle")
                            .foregroundColor(.pink)
                            .font(.system(.title, design: .rounded))
                            .imageScale(.large)
                    }

                }//: HStack
                .padding(.vertical, 16)
                
                //MARK: - Add to Cart
                AddToCartView()
                    .padding(.bottom, 20)
            }//: VStack
            .padding(.horizontal)
            .background {
                Color.white
                    .clipShape(CustomShap())
                    .padding(.top, -105)
            }
        }//: VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .bottom)
        .background(shop.selectedProduct?.productColor ?? sampleProduct.productColor)
    }
}

struct ProductDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailedView()
            .environmentObject(Shop())
    }
}
