//
//  RezepteApp.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

@main
struct RezepteApp: App {
    let recipesData = RecipesData()
    var body: some Scene {
        WindowGroup {
            ContentView(recipesData: recipesData)
        }
    }
}

