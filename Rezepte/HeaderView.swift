//
//  HeaderView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct HeaderView: View {
    let label: String
    
    var body: some View {
        Text(label)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding([.leading, .bottom])
    }
}

struct HeaderView_Previes: PreviewProvider {
    static var previews: some View {
        HeaderView(label: "Categories")
    }
}
