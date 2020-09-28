//
//  RezepteApp.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

@main
struct RezepteApp: App {
    let favorites = Favorites()
    var body: some Scene {
        WindowGroup {
            ContentView(favorites: favorites)
        }
    }
}

