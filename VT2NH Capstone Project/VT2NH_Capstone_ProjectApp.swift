//
//  VT2NH_Capstone_ProjectApp.swift
//  VT2NH Capstone Project
//
//  Created by Kevin Edwards on 11/11/24.
//

import SwiftUI
import SwiftData

@main
struct VT2NH_Capstone_ProjectApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
