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
               Text(recipes.title)
                .font(.body)
                .bold()
                
                Spacer()
                
                Button(action: {
                    if self.recipesData.isFavorite(id: recipes.id){
                        self.recipesData.removeFavorite(id: recipes.id)
                    } else {
                        self.recipesData.addFavorite(id: recipes.id)
                    }
                    
                }, label: {
                    let isFavorite = recipesData.isFavorite(id: recipes.id)
                    Image(systemName: isFavorite ? "heart.fill" : "heart").foregroundColor(isFavorite ? .red : .white)
                })
            }
            .padding([.top, .horizontal])
            
            Image(recipes.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            
            
            Label(recipes.time, systemImage: "clock")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            
        }
        .frame(width: 180, height: 180)
        .background(Color(.secondarySystemBackground))
        .foregroundColor(Color(.label))
        .cornerRadius(18)
        
    }
}

struct GridCellView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
