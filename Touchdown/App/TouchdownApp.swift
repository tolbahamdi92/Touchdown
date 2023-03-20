//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Tolba Hamdi on 3/19/23.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
        
    }
}
