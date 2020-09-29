//
//  CategoriesButtonView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct CategoriesButtonView: View {
    @Binding var filterByCategory: String
    
    let categories: [String]
    
    var body: some View {
        HStack {
            ForEach(categories, id: \.self) {category in
                Text(category)
                    .font(.caption)
                    .fontWeight(category == filterByCategory ? .bold: .regular)
                    .padding([.horizontal, .bottom])
                    .foregroundColor(category == filterByCategory ? Color(.label) : .secondary)
                    .fixedSize()
                    .onTapGesture {
                        filter(by: category)
                    }
            }
        }
    Spacer()
    }
    
    func filter(by label: String) {
        filterByCategory = label
    }
}
