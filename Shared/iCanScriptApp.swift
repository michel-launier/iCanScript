//
//  iCanScriptApp.swift
//  Shared
//
//  Created by Michel Launier on 2021-03-10.
//

import SwiftUI

@main
struct iCanScriptApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
