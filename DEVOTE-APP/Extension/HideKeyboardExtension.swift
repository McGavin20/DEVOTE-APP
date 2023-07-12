//
//  HideKeyboardExtension.swift
//  DEVOTE-APP
//
//  Created by Sharma on 12/07/2023.
//
import Foundation
import SwiftUI


#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
