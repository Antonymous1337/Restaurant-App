//
//  PhotoPopupView.swift
//  Restaurant App
//
//  Created by Antony Holshouser on 11/8/24.
//

import SwiftUI

struct PhotoPopupView: View {
    @Binding var selectedPhoto: String
    @Binding var sheetVisible: Bool
    
    var body: some View {
        ZStack {
            Image(selectedPhoto)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack {
                HStack {
                    Spacer()
                    Button {
                        sheetVisible = false
                    } label: {
                        Image(systemName: "x.circle")
                            .padding(.all, 32)
                            .scaleEffect(3)
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    PhotoPopupView(selectedPhoto: Binding.constant("gallery1"),
                   sheetVisible: Binding.constant(true))
}
