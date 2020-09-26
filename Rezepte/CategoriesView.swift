//
//  CategoriesView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct CategoriesView: View {
    @State private var filterBySearch = ""
    @State private var filterByCategory = "Vegan"

    let categories = ["Vegan", "Vegetarisch", "Fleisch", "Fisch", "Dessert"]
    
    let layout = [ GridItem(.adaptive(minimum: 180))]
    
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    SearchTextFieldView(text: $filterBySearch)
                    HeaderView(label: "Categories")
                    CategoriesButtonView(categories: categories)
                    GridView(filterByCategory: $filterByCategory, filterBySearch: $filterBySearch, layout: layout, recipes: recipes)
                }
            }
            
            
        }
        
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
