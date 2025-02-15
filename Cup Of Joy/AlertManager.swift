//
//  AlertManager.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

class AlertManager {
    
    private static func showBasicAlert(on vc: UIViewController, with title: String, and message: String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            vc.present(alert, animated: true)
        }
    }
}
extension AlertManager {
    
    public static func showInvalidEmailAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Invalid Email", and: "Please enter a valid email.")
    }
    public static func showInvalidPasswordAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Invalid Password", and: "Please enter a valid Password.")
    }
}
// Registration Errors
extension AlertManager {
    public static func showRegistrationErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Unknown Registration Error", and: nil)
    }
    public static func showRegistrationErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Unknown Registration Error", and: "\(error.localizedDescription)")
    }
}
// Log In Errors
extension AlertManager {
    public static func showSignInErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: " Error Signing In", and: nil)
    }
    public static func showSignInErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Error Signing In", and: "\(error.localizedDescription)")
    }
}
// Log Out Errors
extension AlertManager {
    public static func showLogoutError(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Log Out Error",  and: "\(error.localizedDescription)")
    }
}
// Forgot Password Errors
extension AlertManager {
    public static func showPasswordResetSent(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Password Reset Sent", and: nil)
    }
    public static func showErrorSendingPasswordReset(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Error Sending Password Reset",  and: "\(error.localizedDescription)")
    }
}
// Fetching User Errors
extension AlertManager {
    public static func showFetchingUserError(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Error Fetching User",  and: "\(error.localizedDescription)")
    }
    public static func showUnknownFetchingUserError(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Unkown Error Fetching User", and: nil)
    }
}

