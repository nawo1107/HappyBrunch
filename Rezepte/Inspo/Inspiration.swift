//
//  Inspiration.swift
//  Rezepte_App
//
//  Created by Natalie Wolf on 24.09.20.
//

import SwiftUI

struct Home: View{
    @State var animate = false
    @State var data = [
        Inspiration(
            id: 0,
            image: "FrenchToast",
            title: "Brunch",
            subtitle: "Was ist das überhaupt?",
            details: "Als Brunch wird eine Mahlzeit bezeichnet, die aus Komponenten des Frühstücks und des Mittagessens besteht. Das Kofferwort Brunch stammt aus dem Englischen und setzt sich aus breakfast („Frühstück“) und lunch („Mittagessen“) zusammen.Ein Brunch beginnt häufig am Vormittag und wird oft bis in den frühen Nachmittag ausgedehnt.",
            expand: false
        ),
        Inspiration(
            id: 1,
            image: "Egg",
            title: "Brunch Buffet",
            subtitle: "Ideen für dein perfektes Brunch",
            details: "Neben verschiedenen Sorten von Brot und Brötchen sind auch Croissants, Pancakes, Bretzeln, usw. sehr beliebt. Eier in Form von Spiegelei, Rührei mit Speck oder sogar pochiert sind gerade im Trend. Aber auch Müsli mit Joghurt oder Milch, frishes Obst und Warmes wie Aufläufe oder Suppen dürfen bei einem perfekten brunch nicht fehlen.",
            expand: false
        ),
        Inspiration(
            id: 2,
            image: "Rucola",
            title: "Rucola Frischkäse",
            subtitle: "Schneller Brotaufstrich",
            details: "Anleitung: Einen Becher Frischkäse mit etwas Quark strecken und mit etwas Olivenöl geschmeidig rühren,  mit Salz und Pfeffer würzen. Eine Handvoll Rucola, gewaschen und grob gehackt, unterrühren, sowie einen EL geröstete Pinienkerne, ein paar in feine Streifen geschnittene getrocknete Tomaten oder beides.",
            expand: false
        ),
        Inspiration(
            id: 3,
            image: "PancakesInspo",
            title: "Amerikanische Pancakes",
            subtitle: "Kulinarischer Ausflug",
            details: "Sie sind klein oder groß, dick oder dünn und salzig oder süß. Die runden Teigfladen erobern bereits seit mehreren hundert Jahren Teller und Pfannen auf der ganzen Welt. Besonders im nordamerikanischen Raum sind dicke, fluffige Pancakes quasi Pflicht auf jedem Frühstücks-Tisch – klassischerweise mit Ahornsirup und Butterstückchen serviert",
            expand: false
        ),
        Inspiration(
            id: 4,
            image: "Bread",
            title: "Bauernbrot",
            subtitle: "Frisches Brot selbst backen",
            details: "Anleitung: 250 g Weizenmehl, 250 g  Roggenmehl, 30g Zucker und Salz in einer Schüssel mischen. 10g Hefe zugeben. 380 ml lauwarmes Wasser zugeben und alles mit dem Handrührgerät kneten.  60 Min. gehen lassen. Teig durchkneten zu einem runden Laib formen. Auf einem Blech zugedeckt ca. 60 Min. ruhen lassen. Backofen auf 220 Grad vorheizen. Das Brot 40 Min. fertig backen. ",
            expand: false
        )
    ]
    
    var body: some View {
        VStack{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    HStack{
                        VStack() {
                            Text("Happy Brunch")
                                .font(.system(size: 42, weight: .medium, design: .serif))
                                .padding(.top, 50)
                                .padding(.leading)
                            Image("LogoSchwarz")
                                .resizable()
                                .frame(width: 65, height: 65, alignment: .center)
                            HStack{
                                Text("Herzlich willkommen bei Happy Brunch! Wir haben neue Rezept- Empfehlungen für dich. Lass dich inspieren oder suche nach deinem Lieblingsrezept.")
                                    .font(.system(size: 16, weight: .light, design: .monospaced))
                                    .padding(.leading)
                                Spacer()
                            }.padding(.top, 30)
                            VStack{
                                Text("Inspirationen für dich").font(.system(size: 25, weight: .medium, design: .serif))
                                    .padding(.leading)
                            }
                            .padding(.top, 40)
                        }
                        Spacer()
                    }.padding()
                    VStack(spacing: 20){
                        ForEach(0..<self.data.count){i in
                            GeometryReader{g in
                                InspoAnimation(data: self.$data[i], animate: self.$animate)
                                    .offset(y: self.data[i].expand ? -g.frame(in: .global).minY : 0)
                                    .opacity(self.animate ? (self.data[i].expand ? 1 : 0 ) : 1)
                                    // Add Gesture
                                    .onTapGesture {
                                        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)) {
                                            if !self.data[i].expand {
                                                self.animate.toggle()
                                                self.data[i].expand.toggle()
                                            }
                                        }
                                    }
                            }
                            .frame(height: self.data[i].expand ? UIScreen.main.bounds.height : 350)
                            .simultaneousGesture(DragGesture(minimumDistance: self.data[i].expand ? 0 : 500).onChanged({(_) in
                            }))
                        }
                    }
                }
            }
        }
    }
    
    struct InspoAnimation: View{
        
        @Binding var data : Inspiration
        @Binding var animate : Bool
        
        var body: some View{
            ZStack(alignment: .topTrailing) {
                VStack{
                    Image(self.data.image)
                        .resizable()
                        .frame(height: self.data.expand ? 400 : 350)
                        .cornerRadius(self.data.expand ? 0 : 25)
                    if self.data.expand {
                        HStack{
                            Text(self.data.title).font(.system(size: 25, weight: .bold, design: .serif))
                        }.padding()
                        Text(self.data.subtitle).font(.system(size: 16, weight: .light, design: .monospaced))
                        Text(self.data.details)
                            .font(.system(size: 16, weight: .light, design: .serif))
                            .padding(.all, 25)
                            .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 40)
                    }
                }.padding(.horizontal, self.data.expand ? 0 : 18)
                .contentShape(Rectangle())
                
                if self.data.expand {
                    Button(action:  {
                        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0)) {
                            self.data.expand.toggle()
                            self.animate.toggle()
                        }
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("mattblue"))
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top))
                    .padding(.trailing, 20)
                    
                }
            }
        }
        
    }
    
    struct Inspiration: Identifiable {
        var id: Int
        var image: String
        var title: String
        var subtitle: String
        var details: String
        var expand: Bool
    }
}
