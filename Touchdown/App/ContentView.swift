//
//  ContentView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/19/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                CustomNavigationBarView()
                    .padding([.horizontal, .bottom])
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        SliderImagesView()
                            .frame(minHeight: 256)
                            .padding(.vertical, 10)
                        
                        HGridCategoriesView()
                        
                        TitleView(title: "Helmets")
                        
                        VGridProductsView()
                            
                        TitleView(title: "Brands")
                        
                        HGridBrandsView()
                        
                        FooterView()
                            .padding(.horizontal)
                        
                    }
                }//: ScrollView
                
                
            }//: VStack
            .background {
                backgroundColor.ignoresSafeArea()
        }
            } else {
                ProductDetailedView()
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
