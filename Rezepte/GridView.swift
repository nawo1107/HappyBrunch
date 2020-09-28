//
//  GridView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct GridView: View {
    @Binding var filterByCategory: String
    @Binding var filterBySearch: String
    
    let layout: [GridItem]
    let favorite: Favorites
    
    var body: some View {
        LazyVGrid(columns: layout, spacing: 32) {
            if !filterBySearch.isEmpty {
                ForEach(favorite.recipes.filter{
                            $0.title.lowercased().contains(filterBySearch.lowercased()) && $0.category == filterByCategory || $0.subtitle.lowercased().contains(filterBySearch.lowercased()) && $0.category == filterByCategory }, id: \.title) { recipe in
                NavigationLink(
                    destination: DetailView(recipe: recipe),
                    label: {
                        GridCellView(favorites: favorite, recipes: recipe)
                    })
            }
            } else {
                ForEach(favorite.recipes.filter { $0.category.contains(filterByCategory)}, id: \.title) { recipe in

               NavigationLink(
                    destination: DetailView(recipe: recipe),
                        label: {
                            GridCellView(favorites: favorite, recipes: recipe)
                        })
                }
            }
        }
    }
}
