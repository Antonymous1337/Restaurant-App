//
//  AboutView.swift
//  Restaurant App
//
//  Created by Antony Holshouser on 11/8/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("About")
                    .font(.largeTitle)
                    .bold()
                
                Image("restaurant-inside")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("Sukiyabashi Jiro (すきやばし次郎, Sukiyabashi Jirō) is a sushi restaurant in Ginza, Chūō, Tokyo, owned by Jiro Ono.[2] Ono previously operated as the head chef, but stepped aside in favor of his son Yoshikazu Ono in 2023 due to ill health.[3]\n\nSukiyabashi Jiro was the first sushi restaurant[4] to receive three stars from the Michelin Guide.[5] It was removed from the Michelin Guide in November 2019 as it does not receive reservations from the general public,[6][7] instead requiring reservations to be made through the concierge of a luxury hotel.[8]")
                
                Image("map")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("Tsukamoto Sogyo Building\nBasement Floor 1\n2-15, Ginza 4-chome\nChūō, Tokyo")
            }
            .padding(.horizontal)
        }
        .scrollIndicators(.hidden)
        
    }
}

#Preview {
    AboutView()
}
