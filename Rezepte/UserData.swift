//
//  UserData.swift
//  Rezepte
//
//  Created by Josina Zotzmann on 27.09.20.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var recipes = Recipe.self
}
