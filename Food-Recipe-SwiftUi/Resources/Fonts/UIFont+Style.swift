import SwiftUI

// MARK: - Regular Fonts

extension Font {

    static var titleRegular: Font {
        poppins(ofSize: 50, weight: .regular)
    }

    static var headerRegular: Font {
        poppins(ofSize: 30, weight: .regular)
    }

    static var largeRegular: Font {
        poppins(ofSize: 20, weight: .regular)
    }

    static var mediumRegular: Font {
        poppins(ofSize: 18, weight: .regular)
    }

    static var normalRegular: Font {
        poppins(ofSize: 16, weight: .regular)
    }

    static var smallRegular: Font {
        poppins(ofSize: 14, weight: .regular)
    }

    static var smallerRegular: Font {
        poppins(ofSize: 11, weight: .regular)
    }

    static var smallLabelRegular: Font {
        poppins(ofSize: 8, weight: .regular)
    }
}

// MARK: - Bold Fonts

extension Font {

    static var titleBold: Font {
        poppins(ofSize: 50, weight: .bold)
    }

    static var headerBold: Font {
        poppins(ofSize: 30, weight: .bold)
    }

    static var largeBold: Font {
        poppins(ofSize: 20, weight: .bold)
    }

    static var mediumBold: Font {
        poppins(ofSize: 18, weight: .bold)
    }

    static var normalBold: Font {
        poppins(ofSize: 16, weight: .bold)
    }

    static var smallBold: Font {
        poppins(ofSize: 14, weight: .bold)
    }

    static var smallerBold: Font {
        poppins(ofSize: 11, weight: .bold)
    }
}

// MARK: Poppins UIFont Helpers

private extension Font {

    /// Returns a Poppins UIFont instance with the specified Style.
    static func poppins(ofSize size: CGFloat, weight: UIFont.Weight) -> Font {
        let fontName = poppinsFontName(forWeight: weight)
        return Font.custom(fontName, size: size)
    }

    /// Returns a Poppins UIFont file name for the given weight.
    static func poppinsFontName(forWeight weight: UIFont.Weight) -> String {
        switch weight {
        case .bold:
            return "Poppins"
        default:
            return "Poppins"
        }
    }
}
