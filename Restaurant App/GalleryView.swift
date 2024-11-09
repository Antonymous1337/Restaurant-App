//
//  GalleryView.swift
//  Restaurant App
//
//  Created by Antony Holshouser on 11/8/24.
//

import SwiftUI

struct GalleryView: View {
    @State var photoData = [String]()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            
            GeometryReader { proxy in
                ScrollView {
                    LazyVGrid(columns: [GridItem(spacing: 8),
                                        GridItem(spacing: 8),
                                        GridItem(spacing: 8)],
                              spacing: 8) {
                        ForEach(photoData, id: \.self) { p in
                            Image(p)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width-16)/3)
                                .clipped()
                        }
                    }
                }
                .scrollIndicators(.hidden)
            }
        }
        .padding(.horizontal)
        .onAppear {
            photoData = DataService().getPhotos()
        }
    }
}

#Preview {
    GalleryView()
}
