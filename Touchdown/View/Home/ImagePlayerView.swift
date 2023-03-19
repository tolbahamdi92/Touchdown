//
//  ImagePlayerView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/19/23.
//

import SwiftUI

struct ImagePlayerView: View {
    
    //MARK: - Properties
    let player: Player
    
    //MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct ImagePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePlayerView(player: players[0])
    }
}
