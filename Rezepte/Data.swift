//
//  Data.swift
//  Rezepte
//
//  Created by Natalie Wolf on 26.09.20.
//

struct Recipe: Hashable{
    let title: String
    let subtitle: String
    let category: String
    let time: String
    let description: String
    let image: String
    var favourited: Bool
}

let recipes = [
    Recipe(title: "Aubergine", subtitle: "Reispfanne mit Aubergine", category: "Vegan", time: "35 Minuten", description: "Aubergine waschen und in Würfel schneiden. Paprika waschen, Kerne entfernen und in Streifen schneiden. Kichererbsen unter Wasser abspülen und gut abtropfen lassen. Zwiebel und Knoblauch schälen und fein hacken. \nÖl in einer großen Pfanne erhitzen und die Zwiebel zusammen mit dem Knoblauch, der Aubergine, der Paprika und dem Tomatenmark gut 5 Minuten anbraten. Den Reis zufügen, kurz mitgaren und dann mit einem Teil der Gemüsebrühe ablöschen.", image: "aubergine", favourited: false)

]
