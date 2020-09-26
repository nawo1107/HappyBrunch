//
//  SearchTextFieldView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct SearchTextFieldView: View {
    @Binding var text: String
    
    var body: some View {
        ZStack(alignment: .trailing) {
            RoundedRectangle(cornerRadius: 30)
                .frame(height: 55)
                .foregroundColor(Color(
                    .secondarySystemBackground))
                .padding()
            
            
            TextField("Find Conent", text: $text)
                .padding(.leading)
                .offset(x: 12)
            
            
            Button(action: {}, label: {
                Circle()
                    .frame(width: 45, height: 45)
                    .foregroundColor(Color(.systemTeal))
                    .overlay(Image(systemName: "magnifyingglass").foregroundColor(.white))
                    .padding(.trailing)
                    .offset(x: -5)
            })
        }
        .padding()
    }
}

struct SearchTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SearchTextFieldView(text: Binding.constant(""))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            SearchTextFieldView(text: Binding.constant(""))
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)
            
        }
    }
}
