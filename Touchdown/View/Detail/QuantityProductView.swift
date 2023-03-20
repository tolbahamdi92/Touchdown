//
//  QuantityProductView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/20/23.
//

import SwiftUI

struct QuantityProductView: View {
    
    //MARK: - Properties
    @State private var count: Int = 1
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if count > 1 {
                    feedback.impactOccurred()
                    count -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(count)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)

            Button {
                if count < 10 {
                    feedback.impactOccurred()
                    count += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }
        }//: HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityProductView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityProductView()
    }
}
