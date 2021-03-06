//
//  PaymentHandler.swift
//  FoodDeliveryApp
//
//  Created by Zach Smith on 9/12/21.
//

import Foundation
import Stripe
import SwiftUI

struct AddCardView: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentation
    
    func makeUIViewController(context: Context) -> UINavigationController {
        // Setup add card view controller
        let config = STPPaymentConfiguration.shared
        config.publishableKey = "pk_test_51JYACeIdWsQgwec05MtoPTrR4uk89NyiFLl7vdIVWroX195wswX3geYRrO20wcFSeGbC7ugwkQC0gxs9sB44CVny00yvCLvnRW"
        let addCardViewController = STPAddCardViewController(configuration: config, theme: .defaultTheme)
        addCardViewController.delegate = context.coordinator
        let navigationController = UINavigationController(rootViewController: addCardViewController)
        navigationController.navigationBar.stp_theme = .defaultTheme
        return navigationController
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        if let navController = uiViewController.navigationController,
           let navItem = navController.navigationBar.topItem {
            navItem.title = uiViewController.title
            navItem.rightBarButtonItem = uiViewController.navigationItem.rightBarButtonItem
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, STPAddCardViewControllerDelegate, UINavigationControllerDelegate {
        var parent: AddCardView
        
        func addCardViewControllerDidCancel(_ addCardViewController: STPAddCardViewController) {
            parent.presentation.wrappedValue.dismiss()
        }
        
        func addCardViewController(_ addCardViewController: STPAddCardViewController, didCreatePaymentMethod paymentMethod: STPPaymentMethod, completion: @escaping STPErrorBlock) {
            print(paymentMethod)
            //            parent.model.isCards = true
            parent.presentation.wrappedValue.dismiss()
        }
        
        init(_ parent: AddCardView) {
            self.parent = parent
        }
    }
}

