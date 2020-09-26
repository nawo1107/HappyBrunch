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
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 55)
                .foregroundColor(Color(
                    .secondarySystemBackground))
                .padding()
            
            
            TextField("Finde Rezepte", text: $text)
                .padding(.leading)
                .offset(x: 12)
            
            
            Button(action: { text = ""}, label: {
                Circle()
                    .frame(width: 45, height: 45)
                    .foregroundColor(text.isEmpty ? Color(.lightGray) : Color(.darkGray))
                    .overlay(SearchBarButtonOverlayView(text : $text))
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

