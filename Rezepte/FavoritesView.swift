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
        NavigationView {
            List(recipesData.getFavorisedRecipes()) { recipe in
                    NavigationLink(
                        destination: DetailView(recipe: recipe),
                        label: {
                            GridCellView(recipesData: recipesData, recipes: recipe)
                        })
                    }
                }
            .navigationBarTitle(Text("Favoriten"))
    }
    
}




/*
struct LandmarkList: View {
 
 landmarkData : Recipe
 userData : favorites
 landmarks : recipes

    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
             ForEach(userData.landmarks) { landmark in
                 if !self.userData.showFavoritesOnly || landmark.isFavorite {
                     NavigationLink(
                         destination: LandmarkDetail(landmark: landmark)
                             .environmentObject(self.userData)
                     ) {
                         LandmarkRow(landmark: landmark)
                     }
                 }
             }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}*/
