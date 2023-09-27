//
//  NavigationToAreas.swift
//  Inspiration4App
//
//  Created by Ruan Azevedo on 2023-09-27.
//

import SwiftUI

struct NavigationToAreas: View {
    var body: some View {
        VStack {
            NavigationLink {
                Text("Hello World 1 nav 1")
            } label : {
                Label("Hey 1", systemImage: "chevron.right")
            }
            
            NavigationLink {
                Text("Hello World 2 nav 2")
            } label : {
                Label("Hey 2", systemImage: "chevron.right")
            }
            
            NavigationLink {
                Text("Hello World 3 nav 3")
            } label : {
                Label("Hey 3", systemImage: "chevron.right")
            }
        }
    }
}

#Preview {
    NavigationToAreas()
}
