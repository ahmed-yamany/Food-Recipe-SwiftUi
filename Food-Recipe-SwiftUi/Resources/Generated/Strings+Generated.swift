// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Login {
    /// Sign in
    internal static let button = L10n.tr("Localizable", "login.button", fallback: "Sign in")
    /// Email
    internal static let email = L10n.tr("Localizable", "login.email", fallback: "Email")
    /// Enter Email
    internal static let emailTextField = L10n.tr("Localizable", "login.emailTextField", fallback: "Enter Email")
    /// Forgot Password
    internal static let forgotPassword = L10n.tr("Localizable", "login.forgotPassword", fallback: "Forgot Password")
    /// Welcome Back!
    internal static let headerCaption = L10n.tr("Localizable", "login.headerCaption", fallback: "Welcome Back!")
    /// Hello
    internal static let headerTitle = L10n.tr("Localizable", "login.headerTitle", fallback: "Hello")
    /// Enter Password
    internal static let password = L10n.tr("Localizable", "login.password", fallback: "Enter Password")
    /// Enter Password
    internal static let passwordTextField = L10n.tr("Localizable", "login.passwordTextField", fallback: "Enter Password")
    /// Don’t have an account?
    internal static let signup = L10n.tr("Localizable", "login.signup", fallback: "Don’t have an account?")
  }
  internal enum Signup {
    /// Sign up
    internal static let button = L10n.tr("Localizable", "signup.button", fallback: "Sign up")
    /// Confirm Password
    internal static let confirmPassword = L10n.tr("Localizable", "signup.confirmPassword", fallback: "Confirm Password")
    /// Retype Password
    internal static let confirmPasswordTextField = L10n.tr("Localizable", "signup.confirmPasswordTextField", fallback: "Retype Password")
    /// Let’s help you set up your account, it won’t take long.
    internal static let headerCaption = L10n.tr("Localizable", "signup.headerCaption", fallback: "Let’s help you set up your account, it won’t take long.")
    /// Create an account
    internal static let headerTitle = L10n.tr("Localizable", "signup.headerTitle", fallback: "Create an account")
    /// Name
    internal static let name = L10n.tr("Localizable", "signup.name", fallback: "Name")
    /// Enter Name
    internal static let nameTextField = L10n.tr("Localizable", "signup.nameTextField", fallback: "Enter Name")
    /// Password
    internal static let password = L10n.tr("Localizable", "signup.password", fallback: "Password")
    /// Enter Password
    internal static let passwordTextField = L10n.tr("Localizable", "signup.passwordTextField", fallback: "Enter Password")
    /// Already a member?
    internal static let signin = L10n.tr("Localizable", "signup.signin", fallback: "Already a member?")
    /// Accept terms & Condition
    internal static let termsAndConditions = L10n.tr("Localizable", "signup.termsAndConditions", fallback: "Accept terms & Condition")
  }
  internal enum Splash {
    /// Simple way to find Tasty Recipe
    internal static let headerCaption = L10n.tr("Localizable", "splash.headerCaption", fallback: "Simple way to find Tasty Recipe")
    /// Get Cookies
    internal static let headerTitle = L10n.tr("Localizable", "splash.headerTitle", fallback: "Get Cookies")
    /// Localizable.strings
    ///   Food-Recipe-SwiftUi
    /// 
    ///   Created by Ahmed Yamany on 02/07/2023.
    internal static let title = L10n.tr("Localizable", "splash.title", fallback: "100K+ Premium Recipe")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable all
