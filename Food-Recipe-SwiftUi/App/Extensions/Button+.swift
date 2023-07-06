//
//  Button+.swift
//  Food-Recipe-SwiftUi
//
//  Created by Ahmed Yamany on 04/07/2023.
//

import SwiftUI

// MARK: - Button style
//
public enum ButtonStyle {
   case primary
   case primarySmall
   case secondary
   case socialMedia
   // MARK: - Button Background Color
   fileprivate var buttonBackgroundColor: Color {
       switch self {
       case .primary:
           return .primary
       case .primarySmall:
           return .primary
       case .secondary:
           return .clear
       case .socialMedia:
           return .background
       }
   }
   // MARK: - Button Tint Color
   fileprivate var buttonTintColor: Color {
       switch self {
       case .primary:
           return .primaryButtonTitle
       case .primarySmall:
           return .primaryButtonTitle
       case .secondary:
           return .secondary
       case .socialMedia:
           return .clear
       }
   }
   // MARK: - Button Font
    fileprivate var buttonFont: Font {
        switch self {
        case .primary:
            return .mediumBold
        case .primarySmall:
            return .mediumBold
        case .secondary:
            return .smallBold
        case .socialMedia:
            return .mediumBold
        }
    }
    // MARK: - Button Width
    fileprivate var buttonWidth: CGFloat {
        switch self {
        case .primary:
            return .nan
        case .primarySmall:
            return .nan
        case .secondary:
            return .nan
        case .socialMedia:
            return  44
        }
    }
    // MARK: - Button Height
    fileprivate var buttonHeight: CGFloat {
        switch self {
        case .primary:
            return 60
        case .primarySmall:
            return 37
        case .secondary:
            return 16
        case .socialMedia:
            return  44
        }
    }
    // MARK: - Button Alignment
    fileprivate var buttonAlignment: Alignment {
        switch self {
        case .primary:
            return .center
        case .primarySmall:
            return .center
        case .secondary:
            return .leading
        case .socialMedia:
            return  .center
        }
    }
}

extension View {
    @ViewBuilder
    public func applyStyle(_ buttonStyle: ButtonStyle) -> some View {
        self
            .frame(maxWidth: .infinity, alignment: buttonStyle.buttonAlignment)
            .frame(width: buttonStyle.buttonWidth, height: buttonStyle.buttonHeight)
            .background(buttonStyle.buttonBackgroundColor)
            .cornerRadius(10)
            .font(buttonStyle.buttonFont)
            .foregroundColor(buttonStyle.buttonTintColor)
            .shadow(color: .tertiary, radius: buttonStyle == .socialMedia ? 5 : 0)
    }
}
