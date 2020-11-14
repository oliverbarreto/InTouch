//
//  ContentView.swift
//  InTouch
//
//  Created by David Oliver Barreto Rodríguez on 14/11/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
    

    var body: some View {

        NavigationView {
            SideBar()
            MainPlaceHolderView()
            
        }
        .navigationTitle("SideBar Application")
    }

    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
