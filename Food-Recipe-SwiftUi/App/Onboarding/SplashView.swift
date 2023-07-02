//
//  SplashView.swift
//  Food-Recipe-SwiftUi
//
//  Created by Ahmed Yamany on 02/07/2023.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        Image(String.images.backgroundSplash)
            .resizable()
            .overlay {
                VStack {
                    VStack {
                        Image(String.images.iconSplash)
                            .resizable()
                            .frame(width: 79, height: 79)
                        Text(L10n.Splash.title)
                            .font(.mediumBold)
                    }
                    .padding(.top, 104)
                    Spacer()

                    VStack {
                        Text(L10n.Splash.headerTitle)
                            .lineLimit(2)
                            .font(.titleBold)
                            .padding(.horizontal, 50)
                            .padding(.bottom, 12)

                        Text(L10n.Splash.headerCaption)
                            .font(.normalRegular)
                            .padding(.bottom, 36)

                        Button("Start Cooking") {

                        }
                        .frame(width: 315, height: 60)
                        .background(Color.primary)
                        .cornerRadius(10)
                    }
                    .padding(.bottom, 96)

                }
                .foregroundColor(.primaryButtonTitle)
            }
            .ignoresSafeArea(.all)

    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
