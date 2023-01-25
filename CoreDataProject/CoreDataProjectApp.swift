//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Denny Arfansyah on 25/01/23.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ObjectUniqueView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
