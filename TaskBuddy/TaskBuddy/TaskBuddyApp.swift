//
//  TaskBuddyApp.swift
//  TaskBuddy
//
//  Created by Jesús  Fortuna on 17/6/23.
//

import SwiftUI

@main
struct TaskBuddyApp: App {
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
