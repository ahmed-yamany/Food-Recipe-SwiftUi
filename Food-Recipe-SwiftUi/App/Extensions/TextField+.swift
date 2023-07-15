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
    var heigh: CGFloat {
        switch self {
        case .primary: return 56
        case .search: return 44
        }
    }
    var padding: CGFloat {
        switch self {
        case .primary:
            return 20
        case .search:
            return 32
        }
    }
}

extension TextField {
    @ViewBuilder
    public func applyStyle(_ textFieldStyle: TextFieldStyle, title: String = "", isFocused: Bool) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            if textFieldStyle == .primary {
                Text(title)
                    .font(.normalRegular)
            }
            ZStack(alignment: .leading) {
                self
                    .frame(height: textFieldStyle.heigh)
                    .padding(.leading, textFieldStyle.padding)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .foregroundColor(isFocused ? .primary : .tertiary))
                if textFieldStyle == .search {
                    Image(systemName: "magnifyingglass")
                        .padding(.leading, 8)
                        .foregroundColor(.tertiary)
                }
            }

        }
        .foregroundColor(.textColor)
    }
}
