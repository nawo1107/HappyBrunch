//
//  DetailView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 27.09.20.
//

import SwiftUI

struct DetailView: View {

    
    var recipe: Recipe

    var body: some View {

        VStack {
            Text(recipe.title).font(.title)
            Spacer()
                Image(recipe.image)
                .frame(width: 80, height: 80)
                    .padding()
                Spacer()
                Text(recipe.description)
        }
            
            Spacer()
    }
        
}

