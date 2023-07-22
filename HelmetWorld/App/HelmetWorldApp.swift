//
//  HelmetWorldApp.swift
//  HelmetWorld
//
//  Created by Vedat Ozlu on 22.07.2023.
//

import SwiftUI

@main
struct HelmetWorldApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop() )
        }
    }
}
