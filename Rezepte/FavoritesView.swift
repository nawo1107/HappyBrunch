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
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Favoriten")
                                .font(.system(size: 45, weight: .medium, design: .serif))
                                .padding(.top, 20)
                                .padding(.leading)
                            
                            HStack{
                                Text("Hier findest du deine Lieblingsrezepte. Viel Spaß beim Kochen!")
                                    .font(.system(size: 16, weight: .light, design: .monospaced))
                                    .padding(.leading)
                                Spacer()
                            }.padding(.top, 20)
                            VStack{
                                Text("Deine Lieblinge").font(.system(size: 22, weight: .medium, design: .serif)).padding(.trailing, 80)
                                    .padding(.leading)
                            }
                            .padding(.top, 30)
                        }
                        Spacer()
                    }.padding()
                    VStack(spacing: 20){
                        ForEach(recipesData.getFavorisedRecipes()){recipe in
                            NavigationLink(
                                destination: DetailView(recipe: recipe),
                                label: {
                                    GridCellView(recipesData: recipesData, recipes: recipe)
                                })
                        }
                    }
                }
            }
        }
    }
        /*NavigationView {
            List(recipesData.getFavorisedRecipes()) { recipe in
                    NavigationLink(
                        destination: DetailView(recipe: recipe),
                        label: {
                            GridCellView(recipesData: recipesData, recipes: recipe)
                        })
                    }
                }
            .navigationBarTitle(Text("Favoriten"))*/
}
    



