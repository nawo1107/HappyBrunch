//
//  Favorites.swift
//  Rezepte
//
//  Created by Josina Zotzmann on 27.09.20.
//

import SwiftUI

import Foundation

class Favorites: ObservableObject {
    
    var recipes: [Recipe] = []
    
    private let favoritesKey = "RecipeFavorites"
    var favorites: [String] {
        get {
            let favorites = UserDefaults.standard.array(forKey: favoritesKey) as? [String] ?? []
            return Array(Set(favorites))
        }
        set {
            UserDefaults.standard.set(newValue, forKey: favoritesKey)
        }
    }
    
    func addFavorite(id: String) {
        objectWillChange.send()
        favorites.append(id)
    }
    
    func removeFavorite(id: String) {
        objectWillChange.send()
        favorites.removeAll(where: { $0 == id })

    }
    
    func isFavorite(id: String) -> Bool { 
        return favorites.contains(where: { $0 == id })
    }
    
    func getFavorisedRecipes() -> [Recipe] {
        return recipes.filter { (recipe) -> Bool in
            return isFavorite(id: recipe.id)
        }
    }
    
    init() {
        recipes = Data.recipes
    }
    

}
