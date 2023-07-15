//
//  RecipesView.swift
//  Food-Recipe-SwiftUi
//
//  Created by Ahmed Yamany on 15/07/2023.
//

import SwiftUI

struct RecipesView: View {
    let recipes: [Recipe]
    var body: some View {
        VStack(alignment: .leading) {
            Text("New Recipes")
                .font(Font.mediumBold)
                .fontWeight(.bold)
                .padding(.horizontal, 30)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(recipes) { recipe in
                        RecipeView(recipe: recipe)
                    }
                }
                .padding(.horizontal, 30)
            }
            .frame(height: 134)
        }
    }
}

struct RecipeView: View {
    let recipe: Recipe
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading) {
                Text(recipe.time)
                    .lineLimit(1)
                    .frame(width: 139)
                Spacer()
                HStack {
                    Image(recipe.user.image)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    Text("By \(recipe.user.name)")
                        .font(.smallerRegular)

                    Spacer()
                    Image(systemName: "alarm")
                    Text(recipe.time)
                        .font(.smallerRegular)
                }
                .foregroundColor(.gray)
            }
            .padding(8)
            .frame(height: 95)
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .shadow(radius: 3)
            }
        }
        .frame(width: 251, height: 127)
        .overlay(alignment: .topTrailing) {
            Image(recipe.image)
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.horizontal, 25)
        }
        .padding([.bottom, .horizontal], 3)
    }
}
