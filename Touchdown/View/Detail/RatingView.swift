//
//  RatingView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/20/23.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int
    
    let maxRating: Int = 5
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text("Rating")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(colorGray)
            
            HStack {
                ForEach(1...maxRating, id: \.self) { index in
                    Image(systemName: index <= rating ? "star.fill" : "star")
                        .foregroundColor(index <= rating ? .yellow : colorGray)
                        .onTapGesture {
                            self.rating = index
                        }
                }
            }
        }
    }
}


struct RatingView_Previews: PreviewProvider {
    @State static private var rating: Int = 3
    static var previews: some View {
        RatingView(rating: $rating)
    }
}
