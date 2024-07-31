//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Denis Haritonenko on 30.07.24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "listing1",
        "listing2",
        "listing3",
        "listing4",
        "listing5",
    ]
    
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
    
}

#Preview {
    ListingImageCarouselView()
}
