//
//  FoodCard.swift
//  FoodDeliveryApp
//
//  Created by Zach Smith on 9/11/21.
//

import SwiftUI

public struct FoodCard: Identifiable {
    public var id = UUID()
    public let name: String
    public let imageName: String
    public let introduction: String
    public let description: String
    public var price: Double
    public var count: Int?
}
