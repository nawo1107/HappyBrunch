//
//  CategoriesView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct CategoriesView: View {
    @State private var filterBySearch = ""
    @State private var filterByCategory = "Deutsch"

    let categories = ["Deutsch", "Amerikanisch", "Französisch"]
    let favorites: Favorites

    
    let layout = [ GridItem(.adaptive(minimum: 180))]
    
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    SearchTextFieldView(text: $filterBySearch)
                    HeaderView(label: "Categories")
                    CategoriesButtonView(filterByCategory: $filterByCategory, categories: categories)
                    GridView(filterByCategory: $filterByCategory, filterBySearch: $filterBySearch, layout: layout, favorite: favorites)
                }
            }
            
            
        }
        
    }
}

