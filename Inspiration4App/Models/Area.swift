//
//  Area.swift
//  Inspiration4App
//
//  Created by Ruan Azevedo on 2023-09-27.
//

import Foundation

enum Area : String, Identifiable, CaseIterable, Equatable {
    case astronauts, equipment, mission
    var id : Self { self }
    var name: String { rawValue.lowercased() }
    
    var title : String {
        switch self {
        case.astronauts:
            "Inspiration 4 mission crew member..."
        case.equipment:
            "Inspiration 4 mission equipement..."
        case.mission:
            "Inspiration 4 mission trailer..."
        }
    }
}
