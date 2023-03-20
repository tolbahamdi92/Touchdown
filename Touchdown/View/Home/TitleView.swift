//
//  TitleView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/20/23.
//

import SwiftUI

struct TitleView: View {
    
    //MARK: - Properties
    let title:  String
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 10)
        .padding(.bottom, 15)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Hemlet")
    }
}
