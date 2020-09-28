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
            image: "cheesecake",
            title: "Käsekuchen mit Blaubeeren",
            subtitle: "Kuchen",
            details: "BlaBla",
            color: Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)),
            expand: false
        ),
        Inspiration(
            id: 1,
            image: "ChiaPudding",
            title: "Käsekuchen mit Blaubeeren",
            subtitle: "Kuchen",
            details: "BlaBla",
            color: Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)),
            expand: false
        ),
        Inspiration(
            id: 2,
            image: "Burger",
            title: "Käsekuchen mit Blaubeeren",
            subtitle: "Kuchen",
            details: "BlaBla",
            color: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)),
            expand: false
        ),
        Inspiration(
            id: 3,
            image: "FrenchToast",
            title: "Käsekuchen mit Blaubeeren",
            subtitle: "Kuchen",
            details: "BlaBla",
            color: Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)),
            expand: false
        ),
        Inspiration(
            id: 4,
            image: "Taccos",
            title: "Käsekuchen mit Blaubeeren",
            subtitle: "Kuchen",
            details: "BlaBla",
            color: Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)),
            expand: false
        ),
        Inspiration(
            id: 5,
            image: "pancakes",
            title: "Käsekuchen mit Blaubeeren",
            subtitle: "Kuchen",
            details: "BlaBla",
            color: Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)),
            expand: false
        )
    ]
    
    var body: some View {
        VStack{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    HStack{
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Dishes of the Day")
                                .font(.system(size: 45, weight: .medium, design: .serif))
                                .padding(.top, 20)
                            HStack{
                                Text("Hey  Natalie, wir haben ein paar neue Empfehlungen für dich")
                                    .font(.system(size: 25, weight: .light, design: .serif))
                                Spacer()
                            }.padding(.top, 20)
                            VStack{
                                Text("Neue Rezepte").font(.system(size: 35, weight: .medium, design: .serif)).padding(.trailing, 110)
                            }
                            .padding(.top, 10)
                        }
                        Spacer()
                    }.padding()
                    VStack(spacing: 15){
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
                            Spacer()
                        }.padding()
                        Text(self.data.details)
                            .font(.system(size: 15, weight: .light, design: .serif))
                            .padding(.horizontal)
                        Spacer(minLength: 0)
                        //Button
                        Button(action:  {
                            //Do Something
                        }) {
                            Text("Rezept merken")
                                .font(.system(size: 20, weight: .medium, design: .serif))
                                .foregroundColor(.white)
                                .padding(.vertical).frame(width: UIScreen.main.bounds.width / 2)
                                //Color Background
                                .background(Color("mattblue"))
                                .clipShape(Capsule())
                        }
                        .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 65)
                    }
                }.padding(.horizontal, self.data.expand ? 0 : 20)
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
        var color: Color
        var expand: Bool
    }

}
