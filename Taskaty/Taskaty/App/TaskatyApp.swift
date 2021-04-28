//
//  TaskatyApp.swift
//  Taskaty
//
//  Created by mac on 4/28/21.
//

import SwiftUI

@main
struct TaskatyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
