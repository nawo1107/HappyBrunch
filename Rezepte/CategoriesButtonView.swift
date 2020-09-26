//
//  CategoriesButtonView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct CategoriesButtonView: View {
    let categories: [String]
    
    var body: some View {
        HStack {
            ForEach(categories, id: \.self) {category in
                Button(action: {}, label: {
                    Text(category)
                        .fontWeight(category == categories.first ? .bold: .regular)
                        .padding(.horizontal, 6)
                        .foregroundColor(category == categories.first ? Color(.label) : .secondary)
                })
            
            }
        }
    }
}
