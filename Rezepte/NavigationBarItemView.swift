//
//  NavigationBarItemView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct NavigationBarItemView: View {
    let image: String
    @Binding var isAccountViewShowing: Bool
    
    var body: some  View {
        Button(action: { showOrHideView() }, label: {
            Image(systemName: image)
                .font(.title)
                .foregroundColor(Color(.label))
        })
    }
    
    func showOrHideView() {
        if image == "person.crop.circle" {
            isAccountViewShowing.toggle()
        }
    }
}

