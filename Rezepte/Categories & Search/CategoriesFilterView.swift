//
//  CategoriesFilterView.swift
//  Rezepte
//
//  Created by Josina Zotzmann on 01.10.20.
//

import SwiftUI

struct CategoriesFilterView: View {
    @Binding var filterByCategory: String
    @Binding var filterBySearch: String
    
    let recipesData: RecipesData
    
    var body: some View {
        VStack(spacing: 20){
            if !filterBySearch.isEmpty {
                ForEach(recipesData.recipes.filter{
                            $0.title.lowercased().contains(filterBySearch.lowercased()) && $0.category == filterByCategory || $0.subtitle.lowercased().contains(filterBySearch.lowercased()) && $0.category == filterByCategory }, id: \.title) { recipe in
                    NavigationLink(
                        destination: DetailView(recipe: recipe),
                        label: {
                            CategoriesItemView(recipesData: recipesData, recipes: recipe)
                        })
                }
            } else {
                let recipes = recipesData.recipes.filter { $0.category.contains(filterByCategory)}
                ForEach(recipes) { recipe in
                    NavigationLink(
                        destination: DetailView(recipe: recipe),
                        label: {
                            CategoriesItemView(recipesData: recipesData, recipes: recipe)
                        })
                }
            }
            Spacer()
        }.padding(.top, 20)
        Spacer()
    }
}


