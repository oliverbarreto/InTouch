//
//  SideBar.swift
//  SideBarApp
//
//  Created by David Oliver Barreto Rodríguez on 14/11/20.
//

import SwiftUI

struct SideBar: View {
    
    
    // Toggle Sidebar Function
    func toggleSidebar() {
            NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
    }
    
    var body: some View {
        List {
            Group {
                NavigationLink(destination: MainSuggestionsView()) {
                    Label("Suggestions", systemImage: "star.fill")
                    
                }
                NavigationLink(destination: MainContactsView()) {
                    Label("Contacts", systemImage: "person.crop.circle")
                    
                }
                NavigationLink(destination: MainDialView()) {
                    Label("Dial", systemImage: "phone.fill")
                    
                }
                NavigationLink(destination: MainCallhistoryView()) {
                    Label("Call History", systemImage: "clock.fill")
                    
                }
            }
            
            Spacer()
            Divider()
            
            
            NavigationLink(destination: MainCallhistoryView()) {
                Label("Settings", systemImage: "gear")
                
            }
            
        }
        .listStyle(SidebarListStyle())
        .frame(minWidth: 100, idealWidth: 150, maxWidth: 200, maxHeight: .infinity)

        .toolbar{
            //Toggle Sidebar Button
            ToolbarItem(placement: .navigation){
                Button(action: toggleSidebar, label: {
                    Image(systemName: "sidebar.left")
                })
            }
        }
    }

}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
