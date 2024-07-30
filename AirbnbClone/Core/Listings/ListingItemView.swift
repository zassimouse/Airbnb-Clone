//
//  ListingView.swift
//  AirbnbClone
//
//  Created by Denis Haritonenko on 30.07.24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing1",
        "listing2",
        "listing3",
        "listing4",
        "listing5",
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            TabView {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            // details
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading) {
                    Text("Vilnius, Lithuania")
                        .fontWeight(.semibold)
                    Text("2 km away")
                        .foregroundStyle(.gray)
                    Text("Aug 10-12")
                        .foregroundStyle(.gray)
                    HStack(spacing: 2) {
                        Text("$428")
                            .fontWeight(.semibold)
                        Text("night")
                    }

                }
                
                Spacer()
                
                //rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
