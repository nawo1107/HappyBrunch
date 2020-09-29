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
            title: "French Toast",
            subtitle: "Französisch frühstücken",
            details: "Zutaten: 3 Eier | 200 ml Milch | 1 Prise Salz | 8 Scheiben altbackenes Toastbrot | Butter oder Butterschmalz zum Braten\n\nZubereitung: Eier in einem weiten Gefäß, z. B. einer Aufflaufform, mit Milch und 1 Prise Salz verquirlen. Die Toastscheiben nach und nach in der Eiermilch einlegen, bis sich das Brot mit der Flüssigkeit vollgesogen hat. Butter in einer Pfanne erhitzen. Die Toastscheiben darin von beiden Seiten ca. 5 Minuten goldbraun braten. Nach Belieben mit Früchten, Nüssen oder Ahornsirup servieren.",
            expand: false
        ),
        Inspiration(
            id: 1,
            image: "Egg",
            title: "Strammer Max",
            subtitle: "Traditionell",
            details: "Zutaten: 6 TL | Butter 8 | Eier | Salz | Pfeffer | 4 Scheiben  Graubrot | geräucherter Schinken | Gewürzgurken\n\nZubereitung: Je 1 TL Butter in 2 Pfannen erhitzen. In jede Pfanne nacheinander 4 Eier aufschlagen und vorsichtig in die Pfanne gleiten lassen. Bei mittlerer Hitze zu Spiegeleiern braten. Mit Salz und Pfeffer würzen. Brotscheiben mit je 1 TL Butter bestreichen und mit Schinken belegen. Gurken der Länge nach halbieren und fächerartig einschneiden. Je 2 Eier auf jeder Scheibe Brot anrichten. Mit Gurken garnieren.",
            expand: false
        ),
        Inspiration(
            id: 2,
            image: "Burger",
            title: "Frühstücksburger",
            subtitle: "Herzhafter Start in den Tag",
            details: "Zutaten: Salat | Tomaten | Schnittlauch | Eier | 6 EL | Milch | Früchstücksspeck | Salz | Pfeffer | Öl | Toastis \n\nZubereitung: Tomaten waschen und in Scheiben schneiden. Schnittlauch waschen und in Ringe schneiden. Eier, Schnittlauch und Milch in einer Schüssel verquirlen und mit Salz und Pfeffer würzen. Öl in einer Pfanne erhitzen und die Speckscheiben darin kross braten. Eier-Milch in die Pfanne gießen und stocken lassen. Toastis toasten, mit Butter bestreichen, dann mit Salatblättern, Speck, Rührei und Tomatenscheiben belegen.",
            expand: false
        ),
        Inspiration(
            id: 3,
            image: "Pancakes",
            title: "Amerikanische Pancakes",
            subtitle: "Heaven on Earth",
            details: "Zutaten: 300g Mehl | 2 TL Backpulver | 1,5 TL Natron | 80g Zucker | 1 Prise Salz | 275ml Milch | 3 Eier | 60g Schokotropfen\n\nZubereitung: Die Eier und den Zucker schaumig schlagen. Dann die Milch dazu geben und verquirlen. Mehl mit dem Backpulver vermengen und mit dem Salz und dem Öl unter den Teig rühren. Dabei alle Zutaten verrühren, bis ein homogener Teig entsteht. In einer großen Pfanne Öl erhitzen die Pancakes darin braten.",
            expand: false
        ),
        Inspiration(
            id: 4,
            image: "Bread",
            title: "Bauernbrot backen",
            subtitle: "Frisches Brot",
            details: "Zutaten: 250 g Weizenmehl | 10 g  frische Hefe | 250 g  Roggenmehl | 60 g  flüssiger Sauerteig | 30g Honig | 2 TL  gemahlener Kümmel | 10 g  Salz \n\nZubereitung: Mehle, Zucker und Salz in einer Schüssel mischen. Hefe zugeben. 380 ml lauwarmes Wasser zugeben und alles mit dem Handrührgerät kneten.  60 Min. gehen lassen. Teig durchkneten zu einem runden Laib formen. Auf einem Blech zugedeckt ca. 60 Min. ruhen lassen. Backofen auf 220 Grad vorheizen. Das Brot 40 Min. fertig backen. ",
            expand: false
        )
    ]
    
    var body: some View {
        VStack{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    HStack{
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Eat International")
                                .font(.system(size: 45, weight: .medium, design: .serif))
                                .padding(.top, 20)
                                .padding(.leading)

                            HStack{
                                Text("Hey  Natalie,\n\nwir haben neue Rezept- Empfehlungen für dich. Lass dich inspieren oder suche nach deinem Lieblingsrezept.")
                                    .font(.system(size: 16, weight: .light, design: .monospaced))
                                    .padding(.leading)
                                Spacer()
                            }.padding(.top, 20)
                            VStack{
                                Text("Top 5 - Rezepte des Tages").font(.system(size: 22, weight: .medium, design: .serif)).padding(.trailing, 80)
                                    .padding(.leading)
                            }
                            .padding(.top, 30)
                        }
                        Spacer()
                    }.padding()
                    VStack(spacing: 20){
                        ForEach(0..<self.data.count){i in
                            GeometryReader{g in
                                Placeholder(data: self.$data[i], animate: self.$animate)
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
                                print("Youre dragging me")
                            }))
                        }
                    }
                }
            }
        }
    }
    
    struct Placeholder: View{
        
        @Binding var data : Inspiration
        @Binding var animate : Bool
        
        var body: some View{
            ZStack(alignment: .topTrailing) {
                VStack{
                    Image(self.data.image)
                        .resizable()
                        .frame(height: self.data.expand ? 450 : 350)
                        .cornerRadius(self.data.expand ? 0 : 25)
                    if self.data.expand {
                        HStack{
                            Text(self.data.title).font(.system(size: 25, weight: .bold, design: .serif))
                        }.padding()
                        Text(self.data.subtitle).font(.system(size: 16, weight: .light, design: .monospaced))
                        Spacer()
                        Text(self.data.details)
                            .font(.system(size: 15, weight: .light, design: .serif))
                            .padding(.all, 18)
                        //Button
                        /*Button(action:  {
                            //Do Something
                        }) {
                            Text("Rezept merken")
                                .font(.system(size: 20, weight: .medium, design: .serif))
                                .foregroundColor(.white)
                                .padding(.vertical).frame(width: UIScreen.main.bounds.width / 2)
                                //Color Background
                                .background(Color("mattblue"))
                                .clipShape(Capsule())
                        }*/
                        .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 50)
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

struct Inspiration_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
