//
//  Constant.swift
//  DEVOTE-APP
//
//  Created by Sharma on 12/07/2023.
//

import Foundation
import SwiftUI

 // MARK: FORMATTER

 let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

// MARK: UI

var backgroundGradient: LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}


//MARK: UX
