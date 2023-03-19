//
//  SliderImagesView.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/19/23.
//

import SwiftUI

struct SliderImagesView: View {
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
        @State private var currentPage = 0
    
    var body: some View {
        TabView(selection: $currentPage) {
            ForEach(players) {player in
                ImagePlayerView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
                    .tag(player.id - 1)
            }
        }
        .tabViewStyle(.page)
        .onReceive(timer) { _ in
                        withAnimation {
                            currentPage = (currentPage + 1) % players.count
                        }
                    }
    }
}
    struct TabViewIndex {
        static var current: Player = players[0]
    }

struct SliderImagesView_Previews: PreviewProvider {
    static var previews: some View {
        SliderImagesView()
            .background(Color.gray)
    }
}
