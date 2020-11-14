//
//  InTouchApp.swift
//  InTouch
//
//  Created by David Oliver Barreto Rodríguez on 14/11/20.
//

import SwiftUI

@main
struct InTouchApp: App {
    let persistenceController = PersistenceController.shared
    
    //    var body: some Scene {
    //        WindowGroup {
    //            ContentView()
    //                .environment(\.managedObjectContext, persistenceController.container.viewContext)
    //        }
    //    }
    
    
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            ContentView()
        }
        Settings {
            SettingsView()
        }
    }
}
