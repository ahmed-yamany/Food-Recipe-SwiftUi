//
//  TextField+.swift
//  Food-Recipe-SwiftUi
//
//  Created by Ahmed Yamany on 06/07/2023.
//

import SwiftUI

public enum TextFieldStyle {
    case primary
    case search
}

extension TextField {
    @ViewBuilder
    public func applyStyle(_ textFieldStyle: TextFieldStyle, title: String = "") -> some View {
        VStack(alignment: .leading, spacing: 8) {
            if textFieldStyle == .primary {
                Text(title)
                    .font(.normalRegular)
            }
            self
                .frame(height: 56)
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.tertiary))
        }
        .foregroundColor(.textColor)
    }
}
