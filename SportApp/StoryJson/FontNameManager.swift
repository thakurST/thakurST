import SwiftUI

struct FontNameManager {
    //MARK: - Name of font family
    struct DMSans {
        static let regularr = "DMSans-Regular"
        static let mediumm = "DMSans-Medium"
        static let bold = "DMSans-Bold"
        static let boldItalic = "DMSans-BoldItalic"
        static let mediumItalic = "DMSans-MediumItalic"
        static let italic = "DMSans-Italic"
        // add rest of the font style names
    }
}

struct AppFont {
    static let headerFont = Font.custom(FontNameManager.DMSans.mediumm, size: 28)
    static let headingFont = Font.custom(FontNameManager.DMSans.regularr, size: 18)
    static let subHeadingFont = Font.custom(FontNameManager.DMSans.regularr, size: 14)
    static let boldHeadingFont = Font.custom(FontNameManager.DMSans.bold, size: 16)
    static let mediumHeadingFont = Font.custom(FontNameManager.DMSans.mediumm, size: 14)
    static let mediumSubHeadingFont = Font.custom(FontNameManager.DMSans.mediumm, size: 12)
}

