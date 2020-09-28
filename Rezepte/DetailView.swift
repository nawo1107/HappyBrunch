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
        ZStack(alignment: .topTrailing) {
            VStack{
                Image(recipe.image)
                    .resizable()
                    .frame(width: 450 , height: 350)
                    .cornerRadius( 0 , antialiased: (25 != 0))
                HStack{
                        Text(recipe.title).font(.system(size: 25, weight: .bold, design: .serif))
                    }.padding()
                    Text(recipe.subtitle).font(.system(size: 16, weight: .light, design: .monospaced))
                    Spacer()
                    Text(recipe.description)
                        .font(.system(size: 15, weight: .light, design: .serif))
                        .padding(.all, 18)
                }
            }
            .contentShape(Rectangle())
    }
}



