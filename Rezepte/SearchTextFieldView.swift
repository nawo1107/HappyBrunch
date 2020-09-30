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
            RoundedRectangle(cornerRadius: 16)
                .frame(height: 55)
                .foregroundColor(Color(
                .secondarySystemBackground))
                .padding(.all)
            TextField("Finde Rezepte", text: $text)
                .padding(.leading)
                .offset(x: 12)
            Button(action: { text = ""}, label: {
                Circle()
                    .frame(width: 42, height: 42)
                    .foregroundColor(text.isEmpty ? Color("mattblue") : Color(.lightGray))
                    .overlay(SearchBarButtonOverlayView(text : $text))
                    .padding(.trailing)
                    .offset(x: -5)
            })
        }.padding(.all)
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
        }.padding(.all)
    }
}

struct SearchBarButtonOverlayView : View {
    @Binding var text: String
    
    var body: some View {
        Group {
            if text.isEmpty {
                Image(systemName: "magnifyingglass").foregroundColor(.white)
            } else {
                Image(systemName: "xmark").foregroundColor(.white)
            }
        }
    }
}

