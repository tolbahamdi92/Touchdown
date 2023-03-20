//
//  HGridBrandsView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/20/23.
//

import SwiftUI

struct HGridBrandsView: View {
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing) {
                    ForEach(brands) { brand in
                        BrandView(brand: brand)
                    }
            }//: Grid
            .frame(height: 200)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//: ScrollView
    }
}

struct HGridBrandsView_Previews: PreviewProvider {
    static var previews: some View {
        HGridBrandsView()
    }
}
