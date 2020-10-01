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
            ScrollView{
                VStack{
                    Image(recipe.image)
                        .resizable()
                        .frame(width: 450 , height: 300)
                    VStack{
                        Text(recipe.title).font(.system(size: 25, weight: .bold, design: .serif))
                            .padding()
                            .multilineTextAlignment(.center)
                        Text(recipe.subtitle).font(.system(size: 16, weight: .light, design: .monospaced))
                            .padding(.all, 18)
                            .multilineTextAlignment(.center)
                        Spacer()
                        Text(recipe.description)
                            .font(.system(size: 16, weight: .light, design: .serif))
                            .padding(.all, 35)
                    }.padding(.leading)
                }
            }
        }
    }
}
