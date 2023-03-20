//
//  BrandView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/20/23.
//

import SwiftUI

struct BrandView: View {
    //MARK: - Properties
    let brand: Brand
    
    //MARK: - Body
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background {
                Color.white.cornerRadius(10)
            }
            .background {
                RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 1)
            }
    }
}

struct BrandView_Previews: PreviewProvider {
    static var previews: some View {
        BrandView(brand: brands[0])
    }
}
