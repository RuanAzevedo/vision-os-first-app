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
            Text("Welcome To The Inspiration 4 Mission By SpaceX")
                .monospaced()
                .font(.system(size: 40, weight: .bold))
                .padding(.top, 250)
            
            HStack(spacing: 25) {
                ForEach(Area.allCases) { area in
                    NavigationLink {
                        Text(area.title)
                            .monospaced()
                            .font(.system(size: 40, weight: .bold))
                        
                        if area == Area.astronauts {
                            CrewArea()
                        }
                        else if area == Area.equipment {
                            EquipmentArea()
                        }
                        else if area == Area.mission {
                            MissionArea()
                        }
                        
                        Spacer()
                        
                    } label:{
                        Label(area.name, systemImage: "chevron.right")
                            .monospaced()
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    .controlSize(.extraLarge)
                }
            }
        }
        .background() {
            Image("Inspiration4")
        }
    }
}

#Preview {
    NavigationToAreas()
}
