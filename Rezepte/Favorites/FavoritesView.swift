//
//  FavoritesView.swift
//  Rezepte
//
//  Created by Josina Zotzmann on 28.09.20.
//

import SwiftUI

struct FavoritesView: View {
    @ObservedObject var recipesData: RecipesData
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    HStack{
                        VStack() {
                            Text("Favoriten")
                                .font(.system(size: 45, weight: .medium, design: .serif))
                                .padding(.top, 20)
                            
                            HStack{
                                Text("Hier findest du deine Lieblings-Rezepte. Erstelle deine eigene Sammlung mit Rezepten. Viel Spaß beim Ausporbieren!")
                                    .font(.system(size: 16, weight: .light, design: .monospaced))
                                    .padding()
                                Spacer()
                            }.padding(.top, 20)
                            VStack{
                                Text("Deine Lieblings-Rezepte").font(.system(size: 25, weight: .medium, design: .serif))
                                    .padding()
                            }
                            .padding(.top, 30)
                        }.padding(.leading, 20)
                        Spacer()
                    }
                    VStack {
                        ForEach(recipesData.getFavorisedRecipes()){recipe in
                            NavigationLink(
                                destination: DetailView(recipe: recipe),
                                label: {
                                    CategoriesItemView(recipesData: recipesData, recipes: recipe)
                                })
                            Spacer()
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}
