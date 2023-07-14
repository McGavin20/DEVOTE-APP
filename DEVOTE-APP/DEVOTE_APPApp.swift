//
//  DEVOTE_APPApp.swift
//  DEVOTE-APP
//
//  Created by Sharma on 11/07/2023.
//

import SwiftUI

@main
struct DEVOTE_APPApp: App {
    let persistenceController = PersistenceController.shared

    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
