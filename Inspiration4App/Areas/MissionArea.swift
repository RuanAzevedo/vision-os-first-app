//
//  MissionArea.swift
//  Inspiration4App
//
//  Created by Ruan Azevedo on 2023-09-28.
//

import SwiftUI
import AVKit

struct MissionArea: View {
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "Inspiration4", withExtension: "mp4")!)
    
    @State var isPlaying: Bool = false
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
            Button {
                isPlaying ? player.pause() : player.play()
                isPlaying.toggle()
                player.seek(to: .zero)
            } label: {
                Image(systemName: isPlaying ? "stop" : "play")
                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            }
            .padding(10)
        }
        .glassBackgroundEffect()
        .onAppear(perform: {
            isPlaying = false
        })
        .onDisappear(perform: {
            player.pause()
        })
    }
}

#Preview {
    MissionArea()
}
