//
//  SettingsView.swift
//  SideBarApp
//
//  Created by David Oliver Barreto Rodríguez on 14/11/20.
//

import SwiftUI

struct SettingsView: View {
    private enum Tabs: Hashable {
        case general, advanced
    }
    
    var body: some View {
        TabView {
            GeneralSettingsView()
                .tabItem {
                    Label("General", systemImage: "gear")
                }
                .tag(Tabs.general)
            AdvancedSettingsView()
                .tabItem {
                    Label("Advanced", systemImage: "star")
                }
                .tag(Tabs.advanced)
        }
        .padding(20)
        .frame(width: 375, height: 300)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
