//
//  HeaderView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        VStack() {
            Text("Kategorien")
                .font(.system(size: 45, weight: .medium, design: .serif))
                .padding()
            HStack{
                Text("Hier kann du nach einem bestimmten Rezept suchen oder in den einzelnen Kategorien stöbern. Viel Spaß beim Nachkochen und Bon Appétit!")
                    .font(.system(size: 16, weight: .light, design: .monospaced))
                    .padding(.leading)
                    .padding(.top, 20)
                Spacer()
            }
        }.padding(.leading, 20)
    }
}
