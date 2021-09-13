//
//  DetailedFoodView.swift
//  FoodDeliveryApp
//
//  Created by Zach Smith on 9/11/21.
//

import SwiftUI

struct DetailedFoodView: View {
    var body: some View {
        VStack {
            Spacer()
            AsyncImage(url: URL(string: "https://res.cloudinary.com/spacemuletech/image/upload/v1631288042/Screen_Shot_2021-09-10_at_10.33.51_AM_erbp2m.png")!,
                       placeholder: { Text("yankee ...") },
                       image: { Image(uiImage: $0).resizable() })
            Text("The burger description")
                .padding()
            Spacer()
        }
        .navigationTitle("buger")
        .navigationBarTitleDisplayMode(.large)
    }
    
}
