//
//  MenuView.swift
//  Restaurant App
//
//  Created by Antony Holshouser on 11/8/24.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    
    var body: some View {
        List(menuItems) { item in
            
            MenuListRow(item: item)
            
        }
        .listStyle(.plain)
        .onAppear {
            menuItems = DataService().getData()
        }
    }
}

#Preview {
    MenuView()
}
