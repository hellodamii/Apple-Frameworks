//
//  Apple_FrameworksApp.swift
//  Apple-Frameworks
//
//  Created by Busha on 05/07/2024.
//

import SwiftUI
import SwiftData

@main
struct Apple_FrameworksApp: App {
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
            FrameworkGridView()
        }
        .modelContainer(sharedModelContainer)
    }
}
