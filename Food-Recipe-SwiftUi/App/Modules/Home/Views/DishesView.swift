//
//  DishesView.swift
//  Food-Recipe-SwiftUi
//
//  Created by Ahmed Yamany on 15/07/2023.
//

import SwiftUI

struct DishesView: View {
    let dishes: [Dish]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15.0) {
                ForEach(dishes) { dish in
                    DishView(dish: dish)
                }
            }
            .padding(.horizontal, 30)
        }
    }
}

struct DishView: View {
    let dish: Dish
    var body: some View {
        ZStack(alignment: .bottom) {
            RoundedRectangle(cornerRadius: 12)
                .frame(height: 156)
                .foregroundColor(.tertiary)

            VStack {
                Image(dish.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 110)
                    .clipShape(Circle())

                Text(dish.title)
                    .font(.smallBold)
                    .multilineTextAlignment(.center)

                Spacer()
                VStack(alignment: .leading, spacing: 0.0) {
                    Text("Time")
                        .font(.smallerBold)
                        .foregroundColor(.gray)
                    HStack {
                        Text(dish.time)
                            .font(.smallerBold)
                        Spacer()
                        Button {

                        } label: {
                            Image(String.images.iconSaved)
                                .resizable()
                                .frame(width: 8, height: 13)
                                .padding(6)
                                .background(.black.opacity(0.1))
                                .clipShape(Circle())
                        }
                    }
                }
                .padding(.bottom, 5)
            }
            .padding(.horizontal)
        }
        .frame(width: 140, height: 211)
    }
}
