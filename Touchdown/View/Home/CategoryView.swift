//
//  CategoryView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/19/23.
//

import SwiftUI

struct CategoryView: View {
    
    //MARK: - Properties
    let category: Category
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
                Spacer()
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.gray)
                    .frame(width: 30, height: 30)
                
            Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }//: HStack
            .padding()
            .background(content: {
                Color.white
                    .cornerRadius(10)
            })
            .background(content: {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray, lineWidth: 1)
                    
            })
            
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: categories[0])
            .frame(width: 300, height: 50)
            .padding(20)
            .background(.black)
    }
}
