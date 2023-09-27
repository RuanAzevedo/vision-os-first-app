//
//  Inspiration4AppApp.swift
//  Inspiration4App
//
//  Created by Ruan Azevedo on 2023-09-27.
//

import SwiftUI

@main
struct Inspiration4AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
