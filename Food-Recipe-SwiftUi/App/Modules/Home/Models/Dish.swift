//
//  Recipe.swift
//  Food-Recipe-SwiftUi
//
//  Created by Ahmed Yamany on 15/07/2023.
//

import Foundation

enum DishTypes: String, CaseIterable {
    case all, indian, italian, asian, chinies, vegetables, protein, cereal
    case localDishes = "Local Dishes"
}

struct Dish: Hashable, Identifiable {
    let id = UUID()
    let type: DishTypes
    let title: String
    let time: String
    let image: String
}
