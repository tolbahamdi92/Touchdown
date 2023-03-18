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
        VStack {
            Spacer()
            
            FooterView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
