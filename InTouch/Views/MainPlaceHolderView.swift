//
//  MainPlaceHolderView.swift
//  SideBarApp
//
//  Created by David Oliver Barreto Rodríguez on 14/11/20.
//

import SwiftUI

struct MainPlaceHolderView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle")
                .font(.system(size: 60))
                .padding(.vertical, 20)
            
            Text("Placeholder content view when no selected view on navigation list")
            Spacer()
        }
    }
    
}

struct MainPlaceHolderView_Previews: PreviewProvider {
    static var previews: some View {
        MainPlaceHolderView()
    }
}
