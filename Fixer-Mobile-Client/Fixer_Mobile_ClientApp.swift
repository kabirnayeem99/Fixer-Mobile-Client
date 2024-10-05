//
//  Fixer_Mobile_ClientApp.swift
//  Fixer-Mobile-Client
//
//  Created by Naimul Kabir on 5/10/24.
//

import SwiftUI

@main
struct Fixer_Mobile_ClientApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
