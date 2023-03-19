//
//  CustomNavigationBarView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/19/23.
//

import SwiftUI

struct CustomNavigationBarView: View {
    
    //MARK: - Properties
    @State private var isAnimated: Bool = false
    
    //MARK: - Body
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -10)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.7)) {
                        isAnimated = true
                    }
                }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.black)
                    .overlay(alignment: .topTrailing) {
                        Circle()
                            .foregroundColor(.red)
                            .frame(width: 14, height: 14)
                            .offset(x: 0, y: -5)
                            .overlay(alignment: .center) {
                                Text("1")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .offset(x: 0, y: -5)
                            }
                    }
            }
            
        }
    }
}

struct CustomNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBarView()
    }
}
