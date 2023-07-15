//
//  DishMOdel.swift
//  Food-Recipe-SwiftUi
//
//  Created by Ahmed Yamany on 15/07/2023.
//

import Foundation

struct RecipeUser: Identifiable {
    let id = UUID()
    let image: String
    let name: String
}
struct Recipe: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let user: RecipeUser
    let time: String
}
