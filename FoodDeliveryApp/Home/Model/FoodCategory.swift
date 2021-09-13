//
//  FoodCategory.swift
//  FoodDeliveryApp
//
//  Created by Zach Smith on 9/11/21.
//

import SwiftUI

struct FoodCategory: Identifiable {
    var id = UUID()
    let type: FoodType
    let imageName: String
    let color: Color
    let imageWidth: CGFloat
}
