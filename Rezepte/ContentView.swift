//
//  ContentView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct ContentView: View {
    let recipesData: RecipesData
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("Inspiration")
                }.tag(0)
            
            CategoriesView(recipesData: recipesData)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Kategorien")
                }.tag(1)
            FavoritesView(recipesData: recipesData)
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favoriten")
                }.tag(2)
            
            ShoppingList()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Einkaufsliste")
                }.tag(3)
            
        }
    }
}

