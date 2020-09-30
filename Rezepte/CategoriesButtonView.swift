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
                    .font(.system(size: 16, weight: .light, design: .monospaced))
                    .fontWeight(category == filterByCategory ? .bold: .regular)
                    .foregroundColor(category == filterByCategory ? Color(.label) : .secondary)
                    .fixedSize()
                    .padding([.horizontal, .bottom, .top, .leading])
                    .onTapGesture {
                        filter(by: category)
                    }
                
                Spacer()
            }
        }.padding(.leading)
        Spacer()
    }
    
    func filter(by label: String) {
        filterByCategory = label
    }
}

