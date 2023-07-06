//
//  SplashView.swift
//  Food-Recipe-SwiftUi
//
//  Created by Ahmed Yamany on 02/07/2023.
//

import SwiftUI

struct SplashView: View {
    @State private var showLoginView: Bool = false
    var body: some View {
        Image(String.images.backgroundSplash)
            .resizable()
            .ignoresSafeArea()
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
                            .padding(.bottom, 12)
                            .multilineTextAlignment(.center)

                        Text(L10n.Splash.headerCaption)
                            .font(.mediumBold)
                            .padding(.bottom, 36)

                        Button("Start Cooking") {
                            withAnimation {
                                showLoginView = true
                            }
                        }
                        .applyStyle(.primary)
                        .padding(.horizontal, 16)
                    }
                    .padding(.bottom, 96)
                    .padding(.horizontal, 50)

                }
                .foregroundColor(.primaryButtonTitle)
            }
            .fullScreenCover(isPresented: $showLoginView) {
                LoginRegisterView()
            }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
