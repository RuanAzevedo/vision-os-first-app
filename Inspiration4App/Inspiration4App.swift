//
//  Inspiration4AppApp.swift
//  Inspiration4App
//
//  Created by Ruan Azevedo on 2023-09-27.
//

import SwiftUI

@main
struct Inspiration4App: App {
    @State private var model = ViewModel()
    
    var body: some Scene {
        WindowGroup("Main Areas", id: "Areas") {
            Areas().environment(model)
        }
        
        WindowGroup(id: "CapsuleRealityArea"){
            CapsuleRealityArea().environment(model)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)
        
        ImmersiveSpace(id: "FullRocketRealityArea") {
            FullRocketRealityArea().environment(model)
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }
}
