//
//  LoginView.swift
//  Food-Recipe-SwiftUi
//
//  Created by Ahmed Yamany on 04/07/2023.
//

import SwiftUI

struct LoginRegisterView: View {
    @ObservedObject var viewModel = LoginRegisterViewModel()

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                // MARK: - Header
                VStack(alignment: .leading) {
                    Text(viewModel.signUpUser ? L10n.Signup.headerTitle : L10n.Login.headerTitle)
                        .font(viewModel.signUpUser ? .headerBold : .largeTitle)

                    Text(viewModel.signUpUser ? L10n.Signup.headerCaption : L10n.Login.headerCaption)
                        .font(viewModel.signUpUser ? .normalRegular : .largeRegular)
                }
                // MARK: - TextFields
                VStack(spacing: 28.0) {
                    /// Name
                    if viewModel.signUpUser {
                        TextField(L10n.Signup.nameTextField, text: $viewModel.name)
                            .applyStyle(.primary, title: L10n.Signup.name)
                    }
                    /// Email
                    TextField(L10n.Login.emailTextField, text: $viewModel.email)
                        .applyStyle(.primary, title: L10n.Login.email)
                    /// Password
                    TextField(viewModel.signUpUser ? L10n.Signup.passwordTextField : L10n.Login.passwordTextField,
                              text: $viewModel.password)
                    .applyStyle(.primary,
                                title: viewModel.signUpUser ? L10n.Signup.password : L10n.Login.password)
                    /// Confirm Password
                    if viewModel.signUpUser {
                        TextField(L10n.Signup.confirmPasswordTextField, text: $viewModel.confirmPassword)
                        .applyStyle(.primary, title: L10n.Signup.confirmPassword )
                        /// Accept Terms and conditions
                        HStack {
                            Image(systemName: viewModel.acceptTerms ? "checkmark.square" : "square")
                                .foregroundColor(.secondary)
                            Button(L10n.Signup.termsAndConditions) {
                                viewModel.acceptTerms.toggle()
                            }
                            .applyStyle(.secondary)
                        }

                    } else {
                        /// Forgot Password
                        Button(L10n.Login.forgotPassword) {
                        }
                        .applyStyle(.secondary)
                    }

                    /// Primary Button 
                    Button {

                    } label: {
                        Text(viewModel.signUpUser ? L10n.Signup.button : L10n.Login.button)
                            .applyStyle(.primary)
                    }

                    // MARK: - Divider
                    Divider()
                        .frame(width: 192, height: 0.5)
                        .background(.tertiary)
                        .overlay {
                            Text("Or Sign in With")
                                .font(Font.smallerBold)
                                .foregroundColor(.tertiary)
                                .padding(.horizontal, 8)
                                .background(.background)
                        }

                    /// Social media
                    HStack(spacing: 30.0) {
                        Button {
                        } label: {
                            Image(String.images.google)
                        }
                        .applyStyle(.socialMedia)

                        Button {
                        } label: {
                            Image(String.images.facebook)
                        }
                        .applyStyle(.socialMedia)
                    }

                    /// user login & register switcher
                    HStack {
                        Text(viewModel.signUpUser ? L10n.Signup.signin : L10n.Login.signup)
                            .font(Font.smallRegular)
                        Button(viewModel.signUpUser ? L10n.Login.button : L10n.Signup.button) {
                            withAnimation {
                                viewModel.signUpUser.toggle()
                            }
                        }
                        .foregroundColor(.secondary)
                        .font(.smallBold)
                    }
                }
                .padding(.top, viewModel.signUpUser ? 16 : 56)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding(.horizontal, 30)
            .padding(.top, viewModel.signUpUser ? 16 : 52)
            .padding(.bottom, 52)
        }
        .background(.background)
        .foregroundColor(.textColor)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginRegisterView()
    }
}
