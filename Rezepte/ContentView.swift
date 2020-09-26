//
//  ContentView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CategoriesView()
                .tabItem {
                    Image(systemName: "text.book.closed")
                    Text("Inspiration")
                }.tag(0)
            
            Text("Kategorien")
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("Kategorien")
                }.tag(2)
            
            Text("Favoriten")
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favoriten")
                }.tag(3)
            
            Text("Scan")
                .tabItem {
                    Image(systemName: "photo")
                    Text("Scan")
                }.tag(4)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
