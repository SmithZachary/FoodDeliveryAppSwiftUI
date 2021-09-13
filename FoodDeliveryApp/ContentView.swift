//
//  ContentView.swift
//  FoodDeliveryApp
//
//  Created by Zach Smith on 9/11/21.
//


import SwiftUI

struct ContentView: View {
    @StateObject var cartItemsBinding = CartItems()

    var body: some View {
        TabView {
            HomeView(cartItemsBinding: cartItemsBinding)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .environmentObject(CategorySelection())
            CartView(cartItemsBinding: cartItemsBinding)
                .tabItem {
                    Label("Cart", systemImage: "cart.fill")
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
        .accentColor(.black)
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
//            ContentView()
//            HomeView(cartItemsBinding: cartItemsBinding)
//            CartView()
//            ProfileView()
        }
    }
}
