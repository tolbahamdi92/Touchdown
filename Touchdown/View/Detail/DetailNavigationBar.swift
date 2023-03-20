//
//  DetailNavigationBar.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/20/23.
//

import SwiftUI

struct DetailNavigationBar: View {
    
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        HStack {
            Button {
                feedback.impactOccurred()
                shop.showingProduct = false
                shop.selectedProduct = nil
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button {
                feedback.impactOccurred()
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }

        }
    }
}

struct DetailNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        DetailNavigationBar()
            .environmentObject(Shop())
            .background {
                colorGray
            }
    }
}
