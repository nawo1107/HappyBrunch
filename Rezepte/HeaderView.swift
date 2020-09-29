//
//  HeaderView.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Kategorien")
                .font(.system(size: 45, weight: .medium, design: .serif))
                .padding(.leading)

            HStack{
                Text("Hier kann du nach einem bestimmten Rezept suchen oder in den einzelnen Kategorien stöbern. Viel Spaß beim Nachkochen!")
                    .font(.system(size: 16, weight: .light, design: .monospaced))
                    .padding(.leading)
                Spacer()
            }.padding(.top, 20)
        }.padding()
        Spacer()
    }
}



struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
