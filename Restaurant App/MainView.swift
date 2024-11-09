//
//  MainView.swift
//  Restaurant App
//
//  Created by Antony Holshouser on 11/8/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView {
            Tab("Menu", systemImage: "menucard") {
                MenuView()
            }
            Tab("About", systemImage: "info.circle") {
                AboutView()
            }
            Tab("Gallery", systemImage: "photo") {
                GalleryView()
            }
        }
        
    }
}

#Preview {
    MainView()
}
