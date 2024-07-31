//
//  ListingView.swift
//  AirbnbClone
//
//  Created by Denis Haritonenko on 30.07.24.
//

import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // details
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading) {
                    Text("Vilnius, Lithuania")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("2 km away")
                        .foregroundStyle(.gray)
                    
                    Text("Aug 10-12")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 2) {
                        Text("$428")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                //rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
