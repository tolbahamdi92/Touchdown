//
//  HGridCategoriesView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/19/23.
//

import SwiftUI

struct HGridCategoriesView: View {
    
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing) {
                Section(content: {
                    ForEach(categories) { category in
                        CategoryView(category: category)
                    }
                }, header: {
                    headerOrFooterView(text: "Categories")
                }, footer: {
                    headerOrFooterView(text: "Categories")
                })
            }//: Grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//: ScrollView
    }
}

//MARK: - Private Functions
extension HGridCategoriesView {
    private func headerOrFooterView(text: String) -> some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text(text)
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
               .rotationEffect(.degrees(-90))
            
            Spacer()
        }
        .background {
            colorGray.cornerRadius(10)
        }
        .frame(width: 85)
        
    }
}
struct HGridCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        HGridCategoriesView()
    }
}
