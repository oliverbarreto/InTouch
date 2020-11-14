//
//  GeneralSettingsView.swift
//  SideBarApp
//
//  Created by David Oliver Barreto Rodríguez on 14/11/20.
//

import SwiftUI

struct GeneralSettingsView: View {
    @AppStorage("useChromeAsDefaultBrowser") private var useChromeAsDefaultBrowser = true
//    @AppStorage("fontSize") private var fontSize = 12.0

    var body: some View {
        Form {
            Toggle("Use Chrome as default browser", isOn: $useChromeAsDefaultBrowser)
//            Slider(value: $fontSize, in: 9...96) {
//                Text("Font Size (\(fontSize, specifier: "%.0f") pts)")
//            }
        }
        .padding(20)
        .frame(width: 350, height: 300)
    }
}

struct GeneralSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralSettingsView()
    }
}
