//
//  ViewModel.swift
//  Inspiration4App
//
//  Created by Ruan Azevedo on 2023-09-27.
//

import Foundation

@Observable
class ViewModel {
    var navigationPath: [Area] = []
    var isShowingRocketCapsule: Bool = false
    var isShowingFullRocket: Bool = false
}
