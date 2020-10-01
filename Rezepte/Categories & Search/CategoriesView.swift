//
//  CategoriesView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct CategoriesView: View {
    @State private var filterBySearch = ""
    @State private var filterByCategory = "Amerikanisch"
    
    let categories = ["Amerikanisch", "Deutsch", "Französisch"]
    let recipesData: RecipesData
    
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    HeaderView()
                    SearchTextFieldView(text: $filterBySearch)
                    CategoriesButtonView(filterByCategory: $filterByCategory, categories: categories)
                    CategoriesFilterView(filterByCategory: $filterByCategory, filterBySearch: $filterBySearch, recipesData: recipesData)
                }
            }
        }
    }
}
