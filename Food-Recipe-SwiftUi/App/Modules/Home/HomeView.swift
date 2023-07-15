//
//  HomeView.swift
//  Food-Recipe-SwiftUi
//
//  Created by Ahmed Yamany on 12/07/2023.
//

import SwiftUI

struct HomeView: View {
    @Namespace var namespace
    @State private var seatch: String = ""
    @State private var selectedDishType: DishTypes = .all
    @FocusState private var searchIsFocused: Bool
    let dishes: [Dish] = [
        Dish(type: .asian, title: "Classic Greek Salad", time: "15 Mins", image: "p1"),
        Dish(type: .cereal, title: "Crunchy Nut Coleslaw", time: "10 Mins", image: "p2"),
        Dish(type: .chinies, title: "Shrimp Chicken Andouille Sausage Jambalaya", time: "15 Mins", image: "p1"),
        Dish(type: .italian, title: "Classic Greek Salad", time: "15 Mins", image: "p2")
    ]
    @State private var selectedDishes: [Dish] = []
    let recipes: [Recipe] = [
        .init(title: "Steak with tomato sauce and bulgur rice.",
              image: "p1", user: .init(image: String.images.avatar, name: "James Milner"), time: "20 mins"),
        .init(title: "Pilaf sweet with lamb-and-raisins",
              image: "p2", user: .init(image: String.images.avatar, name: "James Milner"), time: "20 mins"),
        .init(title: "Steak with tomato sauce and bulgur rice.",
              image: "p1", user: .init(image: String.images.avatar, name: "Laura wilson"), time: "10 mins")

    ]
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 30) {
                /// avatar
                HStack {
                    VStack(alignment: .leading) {
                        Text("\(L10n.Home.title) Ahmed")
                            .font(.largeBold)

                        Text("\(L10n.Home.caption)")
                            .font(.smallRegular)
                            .foregroundColor(.tertiary)
                    }
                    Spacer()
                    Image(String.images.avatar)
                        .resizable()
                        .frame(width: 44, height: 44)
                }
                /// search
                HStack(spacing: 25) {
                    TextField("\(L10n.Home.Search.placeholder)", text: $seatch)
                        .applyStyle(.search, isFocused: searchIsFocused)
                        .focused($searchIsFocused)
                    Button {

                    } label: {
                        Image(String.images.filter)
                    }
                    .applyStyle(.filter)

                }
                /// select dishe
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(DishTypes.allCases, id: \.self) { dish in
                            Button {
                                withAnimation(.easeOut) {
                                    selectedDishType = dish
                                    updatedSelectedDishes()
                                }
                            } label: {
                                Text(dish.rawValue.capitalized)
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 8)
                                    .foregroundColor(selectedDishType == dish ? .white : .textColor)
                            }
                            .background {
                                if selectedDishType == dish {
                                    RoundedRectangle(cornerRadius: 10)
                                        .matchedGeometryEffect(id: "button", in: namespace)
                                        .foregroundColor(.primary)
                                }
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 30)
            .padding(.vertical)

            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 30.0) {
                    /// Dishes
                    DishesView(dishes: selectedDishes)
                        .frame(height: 211)
                    /// Recipes
                    RecipesView(recipes: recipes)

                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.background)
        .foregroundColor(.textColor)
        .onAppear {
            updatedSelectedDishes()
        }
    }

    private func updatedSelectedDishes() {
        selectedDishes.removeAll()
        if selectedDishType ==  .all {
            selectedDishes = dishes
        } else {
            dishes.forEach { dish in
                if dish.type == selectedDishType {
                    selectedDishes.append(dish)
                }
            }
        }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
