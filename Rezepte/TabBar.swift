//
//  TabBar.swift
//  Rezepte_App
//
//  Created by Natalie Wolf on 24.09.20.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            NavigationView {
                Home()
            }
            .tabItem {
                Image(systemName: "list.bullet.rectangle")
                Text("Rezepte")
            }
            
            NavigationView {
                CategoriesView()
            }
            .tabItem {
                Image(systemName: "list.bullet.rectangle")
                Text("Kategorien")
            }
            
            NavigationView {
                //FavoriteView()
            }
            .tabItem {
                Image(systemName: "heart.fill")
                Text("Favoriten")
            }
            
            NavigationView {
                //SearchView()
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
