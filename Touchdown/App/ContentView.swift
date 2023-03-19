//
//  ContentView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/19/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            CustomNavigationBarView()
                .padding([.horizontal, .bottom])
                .background(Color.white)
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    SliderImagesView()
                        .frame(height: 280)
                    
                    FooterView()
                        .padding(.horizontal)
                    
                }
            }//: ScrollView
            
            
        }//: VStack
        .background {
            backgroundColor.ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
