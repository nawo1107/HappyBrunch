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
    let recipes: [Recipe]
    
    var body: some View {
        LazyVGrid(columns: layout, spacing: 32) {
            if !filterBySearch.isEmpty {
                ForEach(recipes.filter{
                    $0.title.lowercased().contains(filterBySearch.lowercased()) && $0.category == filterByCategory || $0.subtitle.lowercased().contains(filterBySearch.lowercased()) && $0.category == filterByCategory }, id: \.title) { recipe in
                NavigationLink(
                    destination:  Text("Destination"),
                    label: {
                        GridCellView(recipe: recipe)
                    })
            }
            } else {
                ForEach(recipes.filter { $0.category.contains(filterByCategory)}, id: \.title) { recipe in
                    NavigationLink(
                        destination:  Text("Destination"),
                        label: {
                            GridCellView(recipe: recipe)
                        })
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(filterByCategory: Binding.constant(""), filterBySearch: Binding.constant("") , layout: [
                    GridItem(.adaptive(minimum: 180)),
        ], recipes: recipes)
    }
}
