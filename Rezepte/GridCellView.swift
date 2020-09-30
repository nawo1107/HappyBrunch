//
//  GridCellView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct GridCellView: View {
    
    @ObservedObject var recipesData: RecipesData
    let recipes: Recipe
    
    var body: some View {
        VStack {
            HStack {
                VStack{
                    Button(action: {
                        if self.recipesData.isFavorite(id: recipes.id){
                            self.recipesData.removeFavorite(id: recipes.id)
                        } else {
                            self.recipesData.addFavorite(id: recipes.id)
                        }
                    }, label: {
                        let isFavorite = recipesData.isFavorite(id: recipes.id)
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                            .resizable()
                            .frame(width: 33, height: 30, alignment: .trailing)
                            .foregroundColor(isFavorite ? .red : Color("darkgrey"))
                            .padding(.bottom, 25)
                            .padding(.top, 27)
                    })
                    Image(recipes.image)
                        .resizable()
                        .frame(width: 300, height: 200)
                        .aspectRatio(contentMode: .fit)
                    Text(recipes.title)
                        .font(.system(size: 20, weight: .medium, design: .serif))
                        .padding(.top, 10)
                        .padding(.bottom, 5)
                        .multilineTextAlignment(.center)
                    Label(recipes.time, systemImage: "clock")
                        .font(.system(size: 16, weight: .medium, design: .monospaced))
                        .padding(.bottom, 18)
                } .padding([.leading, .trailing], 22)
            }
            .background(Color(.secondarySystemBackground))
            .foregroundColor(Color("darkgrey"))
            .cornerRadius(16)
            .padding([.leading, .trailing], 22)
        }
    }
}

