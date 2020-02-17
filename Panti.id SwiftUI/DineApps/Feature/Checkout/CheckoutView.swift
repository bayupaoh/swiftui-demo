//
//  CheckoutView.swift
//  Panti.id SwiftUI
//
//  Created by Bayu Paoh on 06/02/20.
//  Copyright © 2020 Bayu Paoh. All rights reserved.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    @State private var paymentType = 0
    
    var body: some View {
        VStack {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(0..<self.paymentTypes.count) {
                        Text(self.paymentTypes[$0])
                    }
                }
            }
        }.navigationBarTitle(Text("Payment"), displayMode: .automatic)
//        .navigationBarBackButtonHidden(true)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        NavigationView {
        CheckoutView().environmentObject(order)
        }
    }
}
