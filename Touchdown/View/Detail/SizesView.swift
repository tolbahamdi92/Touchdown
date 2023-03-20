//
//  SizesView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/20/23.
//

import SwiftUI

struct SizesView: View {
    
    //MARK: - Properties
    private let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .trailing, spacing: 3) {
            Text("Sizes")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(colorGray)
            
            HStack(alignment: .center, spacing: 5) {
                ForEach(sizes, id: \.self) { size in
                    Button {
                        
                    } label: {
                        Text(size)
                            .font(.footnote)
                            .fontWeight(.heavy)
                            .foregroundColor(colorGray)
                            .frame(width: 28, height: 28, alignment: .center)
                            .background {
                                Color.white.cornerRadius(5)
                            }
                            .background {
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGray, lineWidth: 2)
                            }
                    }
                }//: Loop
            }//: HStack
        }//: Vstack
    }
}

struct SizesView_Previews: PreviewProvider {
    static var previews: some View {
        SizesView()
    }
}
